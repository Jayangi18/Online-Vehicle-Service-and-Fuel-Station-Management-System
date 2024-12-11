package Vehicle;

import java.sql.SQLException;
import java.util.List;

import Model.VehicleModel;

public interface IVehicle {
	
	public void addVehicleModel(VehicleModel vehicleModel) throws SQLException, ClassNotFoundException;

    public List<VehicleModel> ViewVehicleServlet() throws SQLException;

    public boolean updateVehicle(VehicleModel vehicleModel) throws SQLException;
    
    public boolean deleteVehicle(int serviceId) throws SQLException;
}
