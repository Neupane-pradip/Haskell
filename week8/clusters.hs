--The PhoneType data can have one of four possible values
data PhoneType = WorkLandine | PrivateMobile | WorkMobile | Other
deriving(Show, Eq)

--A countrycode close in a Integer eg +358
data CountryCode = PhoneNo Integer
deriving(Show, Eq)

-- A PhoneNo also wraps an Integer, e.g., 401234567
data PhoneNo = PhoneNo Integer
  deriving (Show, Eq)
  
-- Converts Integer to CountryCode and  checks for negative input
toCountryCode :: Integer -> CountryCode
toCountryCode n
  | n < 0     = error "Negative country code"
  | otherwise = CountryCode n

-- Converts Integer to PhoneNo, but checks for negative input
toPhoneNo :: Integer -> PhoneNo
toPhoneNo n
  | n < 0 = error "Negative phone number"
  | otherwise = PhoneNo n
  
 -- Define phone type with record syntax
 data Phone = Phone
 {
	phoneType   :: PhoneType
  , countryCode :: CountryCode
  , phoneNo     :: PhoneNo
 }
  deriving (Show, Eq)