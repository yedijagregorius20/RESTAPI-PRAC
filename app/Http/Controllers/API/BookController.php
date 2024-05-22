<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Symfony\Component\HttpKernel\Exception\HttpException;
use App\Models\Book;
use OpenApi\Annotations as OA;

class BookController extends Controller {

    /**
     * @OA\Get(
     *      path="/books",
     *      tags={"book"},
     *      description="Display a listing items",
     *      operationId="index",
     *      @OA\Response(
     *          response=200,
     *          description="successful operation"
     *      )
     * )
     */

    public function index() {
        return Book::get();
    }

    public function store(Request $request) {
        try {
            $book = new Book;
            $book->fill($request->validated())->save();

            return $book;
        } catch (\Exception $exception) {
            throw new HttpException(400, "Invalid data - {$exception->getMessage()}");
        }
    }

    public function show($id) {
        $book = Book::findOrFail($id);
        
        return $book;
    }

    public function update(Request $request, $id) {
        if (!$id) {
            throw new HttpException(400, "Invalid id");
        }

        try {
            $book = Book::find($id);
            $book->fill($request->validated())->save();

            return $book;
        } catch (\Exception $exception) {
            throw new HttpException(400, "Invalid data - {$exception->getMessage()}");
        }

    }

    public function destroy($id) {
        $book = Book::findOrFail($id);
        $book->delete();

        return response()->json(null, 204);
    }
}