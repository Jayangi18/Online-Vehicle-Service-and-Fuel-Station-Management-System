package Model;

public class VehicleModel {
	private int vehicleId;
	private String ownerName;
	private String vehicleType;
	private String model;
	private String vin;
	private String licensePlate;
	
	public VehicleModel(int vehicleId, String ownerName, String vehicleType, String model, String vin,
			String licensePlate) {
		super();
		this.vehicleId = vehicleId;
		this.ownerName = ownerName;
		this.vehicleType = vehicleType;
		this.model = model;
		this.vin = vin;
		this.licensePlate = licensePlate;
	}

	public VehicleModel(String ownerName, String vehicleType, String model, String vin, String licensePlate) {
		super();
		this.ownerName = ownerName;
		this.vehicleType = vehicleType;
		this.model = model;
		this.vin = vin;
		this.licensePlate = licensePlate;
	}

	public int getVehicleId() {
		return vehicleId;
	}

	public void setVehicleId(int vehicleId) {
		this.vehicleId = vehicleId;
	}

	public String getOwnerName() {
		return ownerName;
	}

	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}

	public String getVehicleType() {
		return vehicleType;
	}

	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getVin() {
		return vin;
	}

	public void setVin(String vin) {
		this.vin = vin;
	}

	public String getLicensePlate() {
		return licensePlate;
	}

	public void setLicnsePlate(String licensePlate) {
		this.licensePlate = licensePlate;
	}

	
	
}
