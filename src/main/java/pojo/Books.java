package pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Books {

    private int id; //id
    private String name; //书名
    private int counts; //数量
    private String detail; //描述
    private double price; //价格
    private String imagePath; //图片路径

    public Books(String name, int counts, String detail, double price, String imagePath) {
        this.name = name;
        this.counts = counts;
        this.detail = detail;
        this.price = price;
        this.imagePath = imagePath;
    }

}
