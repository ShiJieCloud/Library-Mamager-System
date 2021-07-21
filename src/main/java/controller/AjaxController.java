package controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import pojo.Books;
import pojo.Page;
import pojo.Users;
import service.BookService;
import utils.EmailUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.print.Book;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class AjaxController {

    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;

    @RequestMapping("/book/queryBook")
    public String queryBook(int begin, String name, HttpServletResponse response) {

        System.out.println("name"+name);

        //总行数
        int row = bookService.queryRow(name);
        //总页数
        int pageTotal = row / Page.PAGE_SIZE;
        if (row % Page.PAGE_SIZE > 0 ||pageTotal==0) {
            pageTotal += 1;
        }

        if(begin<1){
            begin=1;
        }
        if (begin>pageTotal){
            begin=pageTotal;
        }

        List<Books> booksList = bookService.limitBook(name,(begin - 1) * Page.PAGE_SIZE, Page.PAGE_SIZE);
        Page page = new Page(begin,name, pageTotal, Page.PAGE_SIZE,booksList);

        return JSON.toJSONString(page);
    }

    @RequestMapping("/toUpdateBook/{id}")
    public String toUpdatePaper(@PathVariable int id) {
        Books books = bookService.queryBookById(id);
        return JSON.toJSONString(books);
    }

    @RequestMapping("/deleteBook/{id}")
    public String deleteBook(@PathVariable int id) {
        int i = bookService.deleteBookById(id);
        JSONObject result = new JSONObject();
        if(i>=0){
            result.put("info","SUCCESS");
        }else {
            result.put("info","ERROR");
        }
        return result.toJSONString();
    }


    @RequestMapping("/toContact")
    public String contact(String email,String text){

        JSONObject result = new JSONObject();

        if(EmailUtils.sendEmail(email, text)){
            result.put("info","SUCCESS");
        }else{
            result.put("info","ERROR");
        }

        return result.toJSONString();

    }


}
