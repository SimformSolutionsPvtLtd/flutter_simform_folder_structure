# simform_folder_structure_example

Demonstrate a sample folder structure for the architecture used in Simform.

## Briefing
- **Architecture**: MVVM(Model View ViewModel) with Repository pattern.
- **State Management**: Mobx

## MVVM Introduction
- Model: Stores data models. Basically stores the data parsed from API response and data sent with API request. Stored in models folder
- View: Flutter widgets and screens. Stored in modules and widgets folders
- ViewModel: Basically the mobx store which handles the basic API calling and other business logic. Stored in modules and widgets folders along side view and some global stores are also stored in utility folder.
- Repository: Stores API calls. Repository basically abstracts the methods for requesting data from data store. Data store can be an API, Cloud or Local database or any other sources.

## Mobx Introduction
MobX is a signal based state management library where any change in a variable is notified to the View and View gets updated to reflect that change.

## Folder Structure
- models: Represents Model layer of MVVM architecture. Contains data models and logic to parse the data from json and parse the json to data model.
- repository: Contains the API calls an other logic to fetch data from data source. It can be API calls, Shared Preferences or Local Database.
- modules: Represents View and ViewModel layer of MVVM architecture. For View layer, this folder contains all the screens displayed in the app. For the ViewModel layer this folder contains respective store classes. Each store classes and screens has their own file. All store class files will be stored in the same folder as their corresponding screen file.
- widgets: Represents View and ViewModel layer of MVVM architecture. Stores common components that will be used in screens. Note, that the widgets stored in this folder will not represent entire screen. Rather it will represent a small fraction of UI which will be displayed in the screen. Rules for storing widgets and store classes are the same as modules folder.
- utilities: Represents ViewModel layer of MVVM architecture. This folder contains utility methods and extension methods which will be used in screen or other business logic. This folder can also store some stores that can be reused along side with other stores.