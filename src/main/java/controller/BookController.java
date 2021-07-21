package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Books;
import pojo.Page;
import service.BookService;

import javax.servlet.http.HttpServletRequest;
import java.awt.print.Book;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;

    /**
     * 跳转到增加书籍页面
     *
     * @return
     */
    @RequestMapping("toAddBook")
    public String toAddPaper() {
        return "addBook";
    }

    /**
     * 添加书籍的请求
     *
     * @param
     * @return
     */
    @PostMapping("addBook")
    public String addBook(Books books) {

        System.out.println(books);
        bookService.addBook(books);
        return "redirect:/book/allBook";
    }

    /**
     * 修改书籍
     *
     * @return
     */
    @RequestMapping("/updateBook")
    public String updateBook(Books books) {
        bookService.updateBook(books);
        return "redirect:/book/allBook";
    }


    /**
     * 查询全部书籍，并返回一个书籍展示页面
     *
     * @param model
     * @return
     */
    @RequestMapping("/allBook")
    public String allBook(HttpServletRequest request,Model model) {

        String pageNo = request.getParameter("begin");

        int begin;
        //如果开始页为空，则默认为第一页
        if (pageNo == null) {
            begin = 1;
        } else {
            begin = Integer.parseInt(pageNo);
        }

        //总行数
        int row = bookService.queryRow(null);
        //总页数
        int pageTotal = row /Page.PAGE_SIZE;
        if (row % Page.PAGE_SIZE > 0) {
            pageTotal += 1;
        }

        //判断：如果当前页<1则设置当前页为第一页
        if(begin<1){
            begin=1;
        }
        //判断：如果当前页大于总页数则设置当前页为最后一页
        if (begin>pageTotal){
            begin=pageTotal;
        }

        Page page = new Page(begin, pageTotal, Page.PAGE_SIZE);
        List<Books> booksList = null;
        if(begin>=1){
            booksList = bookService.limitBook(null,(page.getPageNo() - 1) * Page.PAGE_SIZE, Page.PAGE_SIZE);
        }

        model.addAttribute("page", page);
        model.addAttribute("list", booksList);

        return "allBook";
    }

    @RequestMapping("/toIndex")
    public String toIndex(){
        return "index";
    }

    @RequestMapping("/toSearch")
    public String toSearch(){
        return "search";
    }

    @RequestMapping("/toAbout")
    public String toAbout(){
        return "about";
    }

    @RequestMapping("/toContact")
    public String toContact(){
        return "contact";
    }


}
