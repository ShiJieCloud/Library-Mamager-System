package service;

import dao.BookMapper;
import pojo.Books;

import java.util.List;

public class BookServiceImpl implements BookService {

    /**
     * service 层调用 Dao层
     */
    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    @Override
    public int addBook(Books books) {
        return bookMapper.addBook(books);
    }

    @Override
    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    @Override
    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    @Override
    public Books queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    @Override
    public List<Books> queryAllBooks() {
        return bookMapper.queryAllBooks();
    }

    @Override
    public List<Books> queryBookByName(String name) {
        return bookMapper.queryBookByName(name);
    }

    @Override
    public int queryRow(String name) {
        return bookMapper.queryRow(name);
    }


    @Override
    public List<Books> limitBook(String name, int begin, int size) {
        return bookMapper.limitBook(name, begin, size);
    }
}
