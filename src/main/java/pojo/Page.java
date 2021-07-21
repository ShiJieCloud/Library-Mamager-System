package pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Page {
    public static final Integer PAGE_SIZE=10;

    //当前页码
    private Integer pageNo;

    private String name;

    //总页码
    private Integer pageTotal;

    //当前页显示数量
    private Integer pageSize=PAGE_SIZE;

    private List<Books> booksList;

    public Page(Integer pageNo, Integer pageTotal, Integer pageSize) {
        this.pageNo = pageNo;
        this.pageTotal = pageTotal;
        this.pageSize = pageSize;
    }


}
