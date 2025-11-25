Alternate Key:
    * Alternate Key in a table is nothing but an alternative to the primary key in that table.

Features of Alternate Keys: 
    * The alternate key does not allow duplicate values.
    * A table can have more than one alternate keys.
    * The alternate key can contain NULL values unless the NOT NULL constraint is set explicitly.
    * All alternate keys can be candidate keys, but all candidate keys can not be alternate keys. As a primary key, which is also a candidate key, can not be considered as an alternate key.

Candidate key:
    * A Candidate key is a subset of super keys that is used to uniquely identify records of a table. 
    * It can either be a single field or multiple fields. 
    * Primary keys, alternate keys, foreign keys in a table are all types of candidate key.

Rules to be Followed for Alternate Keys: 
    * Alternate key values should be unique.
    * Alternate key can not be NULL.