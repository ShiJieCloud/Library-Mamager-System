package dao;

import org.apache.ibatis.annotations.Param;
import pojo.Books;

import java.util.List;

public interface BookMapper {

    /**
     * 增加一本书
     *
     * @param books 书籍
     * @return 返回-1表示失败，返回其他则表示成功
     */
    int addBook(Books books);

    /**
     * 通过 id 删除书籍
     *
     * @param id 书籍id
     * @return 返回-1表示失败，返回其他则表示成功
     */
    int deleteBookById(int id);

    /**
     * 通过 id 修改书籍
     *
     * @param books 书籍
     * @return 返回-1表示失败，返回其他则表示成功
     */
    int updateBook(Books books);

    /**
     * 根据 id 查询一本书
     *
     * @param id 书籍id
     * @return 书籍
     */
    Books queryBookById(int id);

    /**
     * 查询全部的书
     *
     * @return 全部书籍的集合
     */
    List<Books> queryAllBooks();

    /**
     * 根据 name 查询书籍
     *
     * @param name 书名
     * @return 书籍的集合
     */
    List<Books> queryBookByName(String name);

    /**
     * 分页查询，如果 name 不为空则根据 name分页；反之，则根据全部数据分页
     *
     * @param name  书名
     * @param begin 开始
     * @param size  页大小
     * @return 当前页的数据
     */
    List<Books> limitBook(@Param("name") String name, @Param("begin") int begin, @Param("size") int size);

    /**
     * 根据 name 模糊查询行数，如果 name 为空则查询所有行数
     *
     * @return 行数
     */
    int queryRow(@Param("name") String name);


}
