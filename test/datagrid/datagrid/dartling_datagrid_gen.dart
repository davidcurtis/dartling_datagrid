 
// test/dartling/datagrid/dartling_datagrid_gen.dart 
 
import "package:dartling/dartling.dart"; 
 
import "package:dartling_datagrid/dartling_datagrid.dart"; 
 
genCode() { 
  var repo = new Repo(); 
 
  // change "Dartling" to "YourDomainName" 
  var dartlingDomain = new Domain("Dartling"); 
 
  // change dartling to yourDomainName 
  // change Skeleton to YourModelName 
  // change "Skeleton" to "YourModelName" 
  Model dartlingDatagridModel = 
      fromMagicBoxes(dartlingDatagridModelJson, dartlingDomain, "Datagrid"); 
 
  repo.domains.add(dartlingDomain); 
 
  repo.gen("dartling_datagrid"); 
} 
 
initDartlingData(DartlingRepo dartlingRepo) { 
   var dartlingModels = 
       dartlingRepo.getDomainModels(DartlingRepo.dartlingDomainCode); 
 
   var dartlingDatagridEntries = 
       dartlingModels.getModelEntries(DartlingRepo.dartlingDatagridModelCode); 
   initDartlingDatagrid(dartlingDatagridEntries); 
   dartlingDatagridEntries.display(); 
   dartlingDatagridEntries.displayJson(); 
} 
 
void main() { 
  genCode(); 
 
  var dartlingRepo = new DartlingRepo(); 
  initDartlingData(dartlingRepo); 
} 
 
