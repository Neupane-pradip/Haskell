-- PhoneType definition
data PhoneType = WorkLandline | PrivateMobile | WorkMobile | Other
  deriving (Show, Eq)

-- CountryCode and PhoneNo definitions
data CountryCode = CountryCode Integer
  deriving (Show, Eq)

data PhoneNo = PhoneNo Integer
  deriving (Show, Eq)

-- Creation functions with validation
toCountryCode :: Integer -> CountryCode
toCountryCode n
  | n < 0     = error "Negative country code"
  | otherwise = CountryCode n

toPhoneNo :: Integer -> PhoneNo
toPhoneNo n
  | n < 0     = error "Negative phone number"
  | otherwise = PhoneNo n

-- Phone type with record syntax
data Phone = Phone
  { phoneType   :: PhoneType
  , countryCode :: CountryCode
  , phoneNo     :: PhoneNo
  } deriving (Show, Eq)
