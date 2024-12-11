package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.VehicleModel;
import Vehicle.VehicleDao;

/**
 * Servlet implementation class CreateVehicleServlet
 */
@WebServlet("/CreateVehicleServlet")
public class CreateVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateVehicleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		String ownerName = request.getParameter("ownerName");
	    String vehicleType = request.getParameter("vehicleType");
	    String model = request.getParameter("model");
	    String vin = request.getParameter("vin");
	    String licensePlate = request.getParameter("licensePlate");
	    
	    VehicleModel vehiclemodel = new VehicleModel(ownerName,vehicleType,model,vin,licensePlate);
	    
	    try {

            VehicleDao veh = new VehicleDao();
            veh.addVehicleModel(vehiclemodel);

            response.sendRedirect("ViewVehicle.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
  }

}
