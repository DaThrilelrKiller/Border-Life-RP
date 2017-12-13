
if (!isNil "Kontostand")then {
if (Kontostand > bank_limit) then {Kontostand = bank_limit;systemChat  localize "STRS_maxbank";};
};