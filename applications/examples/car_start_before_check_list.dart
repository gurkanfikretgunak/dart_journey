
class CarStartBeforeCheckList{

   // State 'durum'
   bool doYouHaveTheKey = false;
   bool isTheCarInTheRightGear = false;
   bool isEngineOilLevelOk = false;
   bool isBrakeFluidLevelOk = true;
   bool isCoolantLevelOk = false;
   bool isBrakePadsLevelOk = false;
   bool isBrakeDiscsLevelOk = false;

   String carModel = 'BMW';
   String carColor = 'Red';
   String carYear = '2020';
   String carEngine = '1.6';
   String carTransmission = 'Automatic';
   String carFuelType = 'Petrol';
   String carFuelConsumption = '10';

   void printCarInfo(){
    print('Car model: $carModel');
    print('Car color: $carColor');
    print('Car year: $carYear');
    print('Car engine: $carEngine');
    print('Car transmission: $carTransmission');
    print('Car fuel type: $carFuelType');
    print('Car fuel consumption: $carFuelConsumption');
   }

   // Olayların çalışması
   bool checkList(){
    print('Checking list...');
    if(doYouHaveTheKey && isTheCarInTheRightGear && isEngineOilLevelOk && isBrakeFluidLevelOk && isCoolantLevelOk && isBrakePadsLevelOk && isBrakeDiscsLevelOk){
      return true;
    }
    return false;
   }

}
