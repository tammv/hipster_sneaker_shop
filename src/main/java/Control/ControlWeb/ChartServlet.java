
package Control.ControlWeb;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.data.general.DefaultPieDataset;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.IOException;
import java.io.OutputStream;

public class ChartServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Tạo dữ liệu mẫu cho sơ đồ
        DefaultPieDataset dataset = new DefaultPieDataset();
        dataset.setValue("Category 1", 50);
        dataset.setValue("Category 2", 30);
        dataset.setValue("Category 3", 20);

        // Tạo sơ đồ từ dữ liệu
        JFreeChart chart = ChartFactory.createPieChart("Sample Chart", dataset, true, true, false);

        // Thiết lập màu sắc cho sơ đồ
        chart.getPlot().setBackgroundPaint(new Color(255, 255, 255));
        chart.getPlot().setOutlinePaint(null);

        // Thiết lập kích thước của sơ đồ
        chart.getTitle().setFont(new Font("Arial", Font.BOLD, 16));
        chart.getLegend().setItemFont(new Font("Arial", Font.PLAIN, 12));

        // Tạo ảnh từ sơ đồ
        response.setContentType("image/png");
        OutputStream outputStream = response.getOutputStream();
        ChartUtilities.writeChartAsPNG(outputStream, chart, 400, 300);
        outputStream.close();
    }
}