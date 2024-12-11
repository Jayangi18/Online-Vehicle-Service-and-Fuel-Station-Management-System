package Utils;

public class VehicleConstants {
	public static final String ADD_SERVICE_QUERY ="INSERT INTO servicepulse.vehicleinfo(vehicleId, ownerName, vehicleType, model, vin, licensePlate) VALUES (?,?,?,?,?,?)";

    public static final String UPDATE_SERVICE_QUERY ="UPDATE servicepulse.vehicleinfo  set ownerName = ?,vehicleType = ?,model = ? ,vin = ?, licensePlate = ? where vehicleId = ?";

    public static final String VIEW_SERVICE_QUERY="select vehicleId, ownerName, vehicleType, model, vin, licensePlate  from  servicepulse.vehicleinfo";

    public static final String DELETE_SERVICE_QUERY ="DELETE FROM servicepulse.vehicleinfo WHERE vehicleId = ?";
}
