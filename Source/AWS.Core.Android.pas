unit AWS.Core.Android;

interface

uses
  AWS.Core,
  Androidapi.JNI.aws.android.sdk.core;

function GetRegions(Region:TAWSAWSRegionType):JRegions;

implementation

function GetRegions(Region:TAWSAWSRegionType):JRegions;
begin
  case Region of
    AWSRegionUnknown:Result:=TJRegions.JavaClass.DEFAULT_REGION;
    AWSRegionUSEast1:Result:=TJRegions.JavaClass.US_EAST_1;
    AWSRegionUSEast2:Result:=TJRegions.JavaClass.US_EAST_2;
    AWSRegionUSWest1:Result:=TJRegions.JavaClass.US_WEST_1;
    AWSRegionUSWest2:Result:=TJRegions.JavaClass.US_WEST_2;
    AWSRegionEUWest1:Result:=TJRegions.JavaClass.EU_WEST_1;
    AWSRegionEUWest2:Result:=TJRegions.JavaClass.EU_WEST_2;
    AWSRegionEUCentral1:Result:=TJRegions.JavaClass.EU_CENTRAL_1;
    AWSRegionAPSoutheast1:Result:=TJRegions.JavaClass.AP_SOUTHEAST_1;
    AWSRegionAPNortheast1:Result:=TJRegions.JavaClass.AP_NORTHEAST_1;
    AWSRegionAPNortheast2:Result:=TJRegions.JavaClass.AP_SOUTHEAST_2;
    AWSRegionAPSoutheast2:Result:=TJRegions.JavaClass.AP_NORTHEAST_2;
    AWSRegionAPSouth1:Result:=TJRegions.JavaClass.AP_SOUTH_1;
    AWSRegionSAEast1:Result:=TJRegions.JavaClass.SA_EAST_1;
    AWSRegionCNNorth1:Result:=TJRegions.JavaClass.CN_NORTH_1;
    AWSRegionCACentral1:Result:=TJRegions.JavaClass.CA_CENTRAL_1;
    AWSRegionUSGovWest1:Result:=TJRegions.JavaClass.GovCloud;
    AWSRegionCNNorthWest1:Result:=TJRegions.JavaClass.CN_NORTHWEST_1;
    AWSRegionEUWest3:Result:=TJRegions.JavaClass.EU_WEST_3;

  end;
end;

end.
