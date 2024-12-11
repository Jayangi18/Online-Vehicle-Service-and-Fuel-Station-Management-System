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
 * Servlet implementation class EditVehicleServlet
 */
@WebServlet("/EditVehicleServlet")
public class EditVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditVehicleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		int vehicleId = Integer.parseInt(request.getParameter("vehicleId"));
	    System.out.println(vehicleId);
	    VehicleDao edi = new VehicleDao();
	    
	    VehicleModel v =  edi.selectRecord(vehicleId);
    //System.out.println(v.getVehicleId());

	        request.setAttribute("vehicleId",v.getVehicleId());
	        request.setAttribute("ownerName",v.getOwnerName());
	        request.setAttribute("vehicleType",v.getVehicleType());
	        request.setAttribute("model",v.getModel());
	        request.setAttribute("vin",v.getVin());
	        
	      //  //System.out.printf("buuuuu",s.getServicePrice());
	        request.setAttribute("licensePlate",v.getLicensePlate());
	       
	     //  //System.out.printf("vvvvv",request);
	        request.getRequestDispatcher("EditVehicle.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
