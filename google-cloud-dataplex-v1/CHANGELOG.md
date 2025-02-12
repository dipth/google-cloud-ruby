# Changelog

### 0.6.1 (2023-02-03)

#### Documentation

* Improve to DataScan API documentation ([#20105](https://github.com/googleapis/google-cloud-ruby/issues/20105)) 

### 0.6.0 (2023-01-05)

#### Features

* Support for DataScanService ([#19952](https://github.com/googleapis/google-cloud-ruby/issues/19952)) 
* Support for Iceberg Tables 

### 0.5.1 (2022-12-15)

#### Documentation

* Minor fixes to reference documentation formatting ([#19875](https://github.com/googleapis/google-cloud-ruby/issues/19875)) 

### 0.5.0 (2022-10-18)

#### Features

* Add event_succeeded, fast_startup_enabled, unassigned_duration to SessionEvent 
* Support notebook configurations ([#19242](https://github.com/googleapis/google-cloud-ruby/issues/19242)) 
* Support the CREATE event type 

### 0.4.0 (2022-07-19)

#### Features

* Added ContainerImageRuntime#image 
* Added filter argument to list_sessions request 
* Added project and KMS key to ExecutionSpec 
* Added sampled_data_locations to partition details 
* Added support for Locations and IAMPolicy auxiliary clients ([#18838](https://github.com/googleapis/google-cloud-ruby/issues/18838)) 
* Support for returning task execution status 

### 0.3.0 (2022-07-02)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 
#### Bug Fixes

* Fixed a crash when making certain long-running-operations status calls ([#18441](https://github.com/googleapis/google-cloud-ruby/issues/18441)) 

### 0.2.1 (2022-05-03)

#### Bug Fixes

* Removed a few unused requires

### 0.2.0 / 2022-02-17

#### Features

* Support for management of Notebook and SQL Scripts
* Support for management of environment resources
* Support for listing sessions in an environment
* Support for creating, updating, and deleting metadata entities
* Support for creating and deleting metadata partitions

### 0.1.0 / 2022-02-15

#### Features

* Initial generation of google-cloud-dataplex-v1
