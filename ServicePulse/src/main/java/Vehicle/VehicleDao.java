package Vehicle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.VehicleModel;
import Utils.DbConnection;
import Utils.VehicleConstants;

public class VehicleDao implements IVehicle  {
	
	private static Connection conn;
    private static PreparedStatement preparedStatement;
    
    //create
    public void addVehicleModel(VehicleModel vehiclemodel) throws SQLException, ClassNotFoundException {
        try {
            conn = DbConnection.getConnection();
          
            String sql=VehicleConstants.ADD_SERVICE_QUERY;
            preparedStatement=conn.prepareStatement(sql);

            preparedStatement.setInt(1,vehiclemodel.getVehicleId());
            preparedStatement.setString(2,vehiclemodel.getOwnerName());
            preparedStatement.setString(3,vehiclemodel.getVehicleType());
            preparedStatement.setString(4,vehiclemodel.getModel());
            preparedStatement.setString(5,vehiclemodel.getVin());
            preparedStatement.setString(6,vehiclemodel.getLicensePlate());
            
            
            preparedStatement.execute();
            System.out.println("Data Insert Successfully");

        } 
        catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
    
    //read
    public List<VehicleModel> ViewVehicleServlet()throws SQLException {
        List<VehicleModel> list = new ArrayList<>();
        try{
          conn = DbConnection.getConnection();
            String sql =VehicleConstants.VIEW_SERVICE_QUERY;
            preparedStatement = conn.prepareStatement(sql);
            System.out.println(preparedStatement);

            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
                int vehicleId=Integer.parseInt(resultSet.getString("vehicleId"));
                String ownerName=resultSet.getString("ownerName");
                String vehicleType=resultSet.getString("vehicleType");
                String model=resultSet.getString("model");
                String vin=resultSet.getString("vin");
                String licensePlate=resultSet.getString("licensePlate");
                
                VehicleModel vehiclemodel = new VehicleModel(vehicleId, ownerName, vehicleType, model, vin, licensePlate);
                list.add(vehiclemodel);
            }
        }catch(ClassNotFoundException e){
            e.printStackTrace();
        }

        return list;
    }
    
    //delete
    public  boolean deleteVehicle(int vehicleId)throws SQLException{
    	VehicleModel VehicleModel=null;
    	boolean rowDeleted = false;
    	
    	try {
    		conn = DbConnection.getConnection();
    		PreparedStatement statement = conn.prepareStatement(VehicleConstants.DELETE_SERVICE_QUERY);
    		System.out.println(statement);

    		statement.setInt(1,vehicleId);
    		 //use to update the query
    		rowDeleted = statement.executeUpdate() > 0;//return number of rows deleted
    	}
    	catch (SQLException | ClassNotFoundException e) {
    			printSQLException((SQLException) e);
    	}
    	return rowDeleted;
    }

    private void printSQLException(SQLException e) {
    		    // TODO Auto-generated method stub
    }
    
    
    /////
    public VehicleModel selectRecord(int vehicleId) {
    //System.out.println(serviceId);
    	VehicleModel vehiclemodel = null;

         try {
             conn = DbConnection.getConnection();
             PreparedStatement preparedStatement = conn.prepareStatement("SELECT vehicleId, ownerName, vehicleType, model, vin, licensePlate FROM servicepulse.vehicleinfo WHERE vehicleId = ?");
             preparedStatement.setInt(1, vehicleId);
             ResultSet rs = preparedStatement.executeQuery();

             while (rs.next()) {
        
                 String ownerName = rs.getString("ownerName");
                 String vehicleType = rs.getString("vehicleType");
                 String model = rs.getString("model");
                 String vin = rs.getString("vin");
                 String licensePlate = rs.getString("licensePlate");
                 
                  
                 //System.out.println(rs.getFloat("servicePrice"));
                 //System.out.println(servicePrice);
                 vehiclemodel = new VehicleModel(vehicleId, ownerName, vehicleType, model, vin, licensePlate);

             }
         } 
         catch (SQLException throwables) {
             throwables.printStackTrace();

         } catch (ClassNotFoundException e) {
             e.printStackTrace();
         }

         return vehiclemodel;

     }
    
    //update
    public  boolean updateVehicle(VehicleModel vehiclemodel) throws SQLException {
        boolean rowUpdated = false;
        try {


            conn = DbConnection.getConnection();
            PreparedStatement statement = conn.prepareStatement(VehicleConstants.UPDATE_SERVICE_QUERY);


            statement.setString(1,vehiclemodel.getOwnerName());
            statement.setString(2,vehiclemodel.getVehicleType());
            statement.setString(3,vehiclemodel.getModel());
            statement.setString(4,vehiclemodel.getVin());
            statement.setString(5,vehiclemodel.getLicensePlate());
            statement.setInt(6,vehiclemodel.getVehicleId());

            
            System.out.println(statement);

            rowUpdated = statement.executeUpdate() > 0;//return number of rows updated
        }catch (SQLException | ClassNotFoundException e) {
            printSQLException((SQLException) e);
        }
        return rowUpdated;
    }


}
