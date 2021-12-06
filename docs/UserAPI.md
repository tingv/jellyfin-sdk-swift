# UserAPI

All URIs are relative to *http://localhost:8096*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticateUser**](UserAPI.md#authenticateuser) | **POST** /Users/{userId}/Authenticate | Authenticates a user.
[**authenticateUserByName**](UserAPI.md#authenticateuserbyname) | **POST** /Users/AuthenticateByName | Authenticates a user by name.
[**authenticateWithQuickConnect**](UserAPI.md#authenticatewithquickconnect) | **POST** /Users/AuthenticateWithQuickConnect | Authenticates a user with quick connect.
[**createUserByName**](UserAPI.md#createuserbyname) | **POST** /Users/New | Creates a user.
[**deleteUser**](UserAPI.md#deleteuser) | **DELETE** /Users/{userId} | Deletes a user.
[**forgotPassword**](UserAPI.md#forgotpassword) | **POST** /Users/ForgotPassword | Initiates the forgot password process for a local user.
[**forgotPasswordPin**](UserAPI.md#forgotpasswordpin) | **POST** /Users/ForgotPassword/Pin | Redeems a forgot password pin.
[**getCurrentUser**](UserAPI.md#getcurrentuser) | **GET** /Users/Me | Gets the user based on auth token.
[**getPublicUsers**](UserAPI.md#getpublicusers) | **GET** /Users/Public | Gets a list of publicly visible users for display on a login screen.
[**getUserById**](UserAPI.md#getuserbyid) | **GET** /Users/{userId} | Gets a user by Id.
[**getUsers**](UserAPI.md#getusers) | **GET** /Users | Gets a list of users.
[**updateUser**](UserAPI.md#updateuser) | **POST** /Users/{userId} | Updates a user.
[**updateUserConfiguration**](UserAPI.md#updateuserconfiguration) | **POST** /Users/{userId}/Configuration | Updates a user configuration.
[**updateUserEasyPassword**](UserAPI.md#updateusereasypassword) | **POST** /Users/{userId}/EasyPassword | Updates a user&#39;s easy password.
[**updateUserPassword**](UserAPI.md#updateuserpassword) | **POST** /Users/{userId}/Password | Updates a user&#39;s password.
[**updateUserPolicy**](UserAPI.md#updateuserpolicy) | **POST** /Users/{userId}/Policy | Updates a user policy.


# **authenticateUser**
```swift
    open class func authenticateUser( userId: String,  pw: String,  password: String? = nil) -> Promise<AuthenticationResult>
```

Authenticates a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | The user id.
let pw = "pw_example" // String | The password as plain text.
let password = "password_example" // String | The password sha1-hash. (optional)

// Authenticates a user.
UserAPI.authenticateUser(userId: userId, pw: pw, password: password).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String** | The user id. | 
 **pw** | **String** | The password as plain text. | 
 **password** | **String** | The password sha1-hash. | [optional] 

### Return type

[**AuthenticationResult**](AuthenticationResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticateUserByName**
```swift
    open class func authenticateUserByName( authenticateUserByName: AuthenticateUserByName) -> Promise<AuthenticationResult>
```

Authenticates a user by name.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let authenticateUserByName = AuthenticateUserByName(username: "username_example", pw: "pw_example", password: "password_example") // AuthenticateUserByName | The M:Jellyfin.Api.Controllers.UserController.AuthenticateUserByName(Jellyfin.Api.Models.UserDtos.AuthenticateUserByName) request.

// Authenticates a user by name.
UserAPI.authenticateUserByName(authenticateUserByName: authenticateUserByName).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authenticateUserByName** | [**AuthenticateUserByName**](AuthenticateUserByName.md) | The M:Jellyfin.Api.Controllers.UserController.AuthenticateUserByName(Jellyfin.Api.Models.UserDtos.AuthenticateUserByName) request. | 

### Return type

[**AuthenticationResult**](AuthenticationResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticateWithQuickConnect**
```swift
    open class func authenticateWithQuickConnect( quickConnectDto: QuickConnectDto) -> Promise<AuthenticationResult>
```

Authenticates a user with quick connect.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let quickConnectDto = QuickConnectDto(token: "token_example") // QuickConnectDto | The Jellyfin.Api.Models.UserDtos.QuickConnectDto request.

// Authenticates a user with quick connect.
UserAPI.authenticateWithQuickConnect(quickConnectDto: quickConnectDto).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quickConnectDto** | [**QuickConnectDto**](QuickConnectDto.md) | The Jellyfin.Api.Models.UserDtos.QuickConnectDto request. | 

### Return type

[**AuthenticationResult**](AuthenticationResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUserByName**
```swift
    open class func createUserByName( createUserByName: CreateUserByName) -> Promise<UserDto>
```

Creates a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let createUserByName = CreateUserByName(name: "name_example", password: "password_example") // CreateUserByName | The create user by name request body.

// Creates a user.
UserAPI.createUserByName(createUserByName: createUserByName).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUserByName** | [**CreateUserByName**](CreateUserByName.md) | The create user by name request body. | 

### Return type

[**UserDto**](UserDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
```swift
    open class func deleteUser( userId: String) -> Promise<Void>
```

Deletes a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | The user id.

// Deletes a user.
UserAPI.deleteUser(userId: userId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String** | The user id. | 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forgotPassword**
```swift
    open class func forgotPassword( forgotPasswordDto: ForgotPasswordDto) -> Promise<ForgotPasswordResult>
```

Initiates the forgot password process for a local user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let forgotPasswordDto = ForgotPasswordDto(enteredUsername: "enteredUsername_example") // ForgotPasswordDto | The forgot password request containing the entered username.

// Initiates the forgot password process for a local user.
UserAPI.forgotPassword(forgotPasswordDto: forgotPasswordDto).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forgotPasswordDto** | [**ForgotPasswordDto**](ForgotPasswordDto.md) | The forgot password request containing the entered username. | 

### Return type

[**ForgotPasswordResult**](ForgotPasswordResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forgotPasswordPin**
```swift
    open class func forgotPasswordPin( forgotPasswordPinDto: ForgotPasswordPinDto) -> Promise<PinRedeemResult>
```

Redeems a forgot password pin.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let forgotPasswordPinDto = ForgotPasswordPinDto(pin: "pin_example") // ForgotPasswordPinDto | The forgot password pin request containing the entered pin.

// Redeems a forgot password pin.
UserAPI.forgotPasswordPin(forgotPasswordPinDto: forgotPasswordPinDto).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forgotPasswordPinDto** | [**ForgotPasswordPinDto**](ForgotPasswordPinDto.md) | The forgot password pin request containing the entered pin. | 

### Return type

[**PinRedeemResult**](PinRedeemResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentUser**
```swift
    open class func getCurrentUser() -> Promise<UserDto>
```

Gets the user based on auth token.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient


// Gets the user based on auth token.
UserAPI.getCurrentUser().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserDto**](UserDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPublicUsers**
```swift
    open class func getPublicUsers() -> Promise<[UserDto]>
```

Gets a list of publicly visible users for display on a login screen.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient


// Gets a list of publicly visible users for display on a login screen.
UserAPI.getPublicUsers().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[UserDto]**](UserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserById**
```swift
    open class func getUserById( userId: String) -> Promise<UserDto>
```

Gets a user by Id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | The user id.

// Gets a user by Id.
UserAPI.getUserById(userId: userId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String** | The user id. | 

### Return type

[**UserDto**](UserDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
```swift
    open class func getUsers( isHidden: Bool? = nil,  isDisabled: Bool? = nil) -> Promise<[UserDto]>
```

Gets a list of users.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let isHidden = true // Bool | Optional filter by IsHidden=true or false. (optional)
let isDisabled = true // Bool | Optional filter by IsDisabled=true or false. (optional)

// Gets a list of users.
UserAPI.getUsers(isHidden: isHidden, isDisabled: isDisabled).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isHidden** | **Bool** | Optional filter by IsHidden&#x3D;true or false. | [optional] 
 **isDisabled** | **Bool** | Optional filter by IsDisabled&#x3D;true or false. | [optional] 

### Return type

[**[UserDto]**](UserDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
```swift
    open class func updateUser( userId: String,  userDto: UserDto) -> Promise<Void>
```

Updates a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | The user id.
let userDto = UserDto(name: "name_example", serverId: "serverId_example", serverName: "serverName_example", id: "id_example", primaryImageTag: "primaryImageTag_example", hasPassword: false, hasConfiguredPassword: false, hasConfiguredEasyPassword: false, enableAutoLogin: false, lastLoginDate: Date(), lastActivityDate: Date(), configuration: UserConfiguration(audioLanguagePreference: "audioLanguagePreference_example", playDefaultAudioTrack: false, subtitleLanguagePreference: "subtitleLanguagePreference_example", displayMissingEpisodes: false, groupedFolders: ["groupedFolders_example"], subtitleMode: SubtitlePlaybackMode(), displayCollectionsView: false, enableLocalPassword: false, orderedViews: ["orderedViews_example"], latestItemsExcludes: ["latestItemsExcludes_example"], myMediaExcludes: ["myMediaExcludes_example"], hidePlayedInLatest: false, rememberAudioSelections: false, rememberSubtitleSelections: false, enableNextEpisodeAutoPlay: false), policy: UserPolicy(isAdministrator: false, isHidden: false, isDisabled: false, maxParentalRating: 123, blockedTags: ["blockedTags_example"], enableUserPreferenceAccess: false, accessSchedules: [AccessSchedule(id: 123, userId: "userId_example", dayOfWeek: DynamicDayOfWeek(), startHour: 123, endHour: 123)], blockUnratedItems: [UnratedItem()], enableRemoteControlOfOtherUsers: false, enableSharedDeviceControl: false, enableRemoteAccess: false, enableLiveTvManagement: false, enableLiveTvAccess: false, enableMediaPlayback: false, enableAudioPlaybackTranscoding: false, enableVideoPlaybackTranscoding: false, enablePlaybackRemuxing: false, forceRemoteSourceTranscoding: false, enableContentDeletion: false, enableContentDeletionFromFolders: ["enableContentDeletionFromFolders_example"], enableContentDownloading: false, enableSyncTranscoding: false, enableMediaConversion: false, enabledDevices: ["enabledDevices_example"], enableAllDevices: false, enabledChannels: ["enabledChannels_example"], enableAllChannels: false, enabledFolders: ["enabledFolders_example"], enableAllFolders: false, invalidLoginAttemptCount: 123, loginAttemptsBeforeLockout: 123, maxActiveSessions: 123, enablePublicSharing: false, blockedMediaFolders: ["blockedMediaFolders_example"], blockedChannels: ["blockedChannels_example"], remoteClientBitrateLimit: 123, authenticationProviderId: "authenticationProviderId_example", passwordResetProviderId: "passwordResetProviderId_example", syncPlayAccess: SyncPlayUserAccessType()), primaryImageAspectRatio: 123) // UserDto | The updated user model.

// Updates a user.
UserAPI.updateUser(userId: userId, userDto: userDto).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String** | The user id. | 
 **userDto** | [**UserDto**](UserDto.md) | The updated user model. | 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserConfiguration**
```swift
    open class func updateUserConfiguration( userId: String,  userConfiguration: UserConfiguration) -> Promise<Void>
```

Updates a user configuration.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | The user id.
let userConfiguration = UserConfiguration(audioLanguagePreference: "audioLanguagePreference_example", playDefaultAudioTrack: false, subtitleLanguagePreference: "subtitleLanguagePreference_example", displayMissingEpisodes: false, groupedFolders: ["groupedFolders_example"], subtitleMode: SubtitlePlaybackMode(), displayCollectionsView: false, enableLocalPassword: false, orderedViews: ["orderedViews_example"], latestItemsExcludes: ["latestItemsExcludes_example"], myMediaExcludes: ["myMediaExcludes_example"], hidePlayedInLatest: false, rememberAudioSelections: false, rememberSubtitleSelections: false, enableNextEpisodeAutoPlay: false) // UserConfiguration | The new user configuration.

// Updates a user configuration.
UserAPI.updateUserConfiguration(userId: userId, userConfiguration: userConfiguration).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String** | The user id. | 
 **userConfiguration** | [**UserConfiguration**](UserConfiguration.md) | The new user configuration. | 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserEasyPassword**
```swift
    open class func updateUserEasyPassword( userId: String,  updateUserEasyPassword: UpdateUserEasyPassword) -> Promise<Void>
```

Updates a user's easy password.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | The user id.
let updateUserEasyPassword = UpdateUserEasyPassword(newPassword: "newPassword_example", newPw: "newPw_example", resetPassword: false) // UpdateUserEasyPassword | The M:Jellyfin.Api.Controllers.UserController.UpdateUserEasyPassword(System.Guid,Jellyfin.Api.Models.UserDtos.UpdateUserEasyPassword) request.

// Updates a user's easy password.
UserAPI.updateUserEasyPassword(userId: userId, updateUserEasyPassword: updateUserEasyPassword).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String** | The user id. | 
 **updateUserEasyPassword** | [**UpdateUserEasyPassword**](UpdateUserEasyPassword.md) | The M:Jellyfin.Api.Controllers.UserController.UpdateUserEasyPassword(System.Guid,Jellyfin.Api.Models.UserDtos.UpdateUserEasyPassword) request. | 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserPassword**
```swift
    open class func updateUserPassword( userId: String,  updateUserPassword: UpdateUserPassword) -> Promise<Void>
```

Updates a user's password.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | The user id.
let updateUserPassword = UpdateUserPassword(currentPassword: "currentPassword_example", currentPw: "currentPw_example", newPw: "newPw_example", resetPassword: false) // UpdateUserPassword | The M:Jellyfin.Api.Controllers.UserController.UpdateUserPassword(System.Guid,Jellyfin.Api.Models.UserDtos.UpdateUserPassword) request.

// Updates a user's password.
UserAPI.updateUserPassword(userId: userId, updateUserPassword: updateUserPassword).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String** | The user id. | 
 **updateUserPassword** | [**UpdateUserPassword**](UpdateUserPassword.md) | The M:Jellyfin.Api.Controllers.UserController.UpdateUserPassword(System.Guid,Jellyfin.Api.Models.UserDtos.UpdateUserPassword) request. | 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserPolicy**
```swift
    open class func updateUserPolicy( userId: String,  userPolicy: UserPolicy) -> Promise<Void>
```

Updates a user policy.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | The user id.
let userPolicy = UserPolicy(isAdministrator: false, isHidden: false, isDisabled: false, maxParentalRating: 123, blockedTags: ["blockedTags_example"], enableUserPreferenceAccess: false, accessSchedules: [AccessSchedule(id: 123, userId: "userId_example", dayOfWeek: DynamicDayOfWeek(), startHour: 123, endHour: 123)], blockUnratedItems: [UnratedItem()], enableRemoteControlOfOtherUsers: false, enableSharedDeviceControl: false, enableRemoteAccess: false, enableLiveTvManagement: false, enableLiveTvAccess: false, enableMediaPlayback: false, enableAudioPlaybackTranscoding: false, enableVideoPlaybackTranscoding: false, enablePlaybackRemuxing: false, forceRemoteSourceTranscoding: false, enableContentDeletion: false, enableContentDeletionFromFolders: ["enableContentDeletionFromFolders_example"], enableContentDownloading: false, enableSyncTranscoding: false, enableMediaConversion: false, enabledDevices: ["enabledDevices_example"], enableAllDevices: false, enabledChannels: ["enabledChannels_example"], enableAllChannels: false, enabledFolders: ["enabledFolders_example"], enableAllFolders: false, invalidLoginAttemptCount: 123, loginAttemptsBeforeLockout: 123, maxActiveSessions: 123, enablePublicSharing: false, blockedMediaFolders: ["blockedMediaFolders_example"], blockedChannels: ["blockedChannels_example"], remoteClientBitrateLimit: 123, authenticationProviderId: "authenticationProviderId_example", passwordResetProviderId: "passwordResetProviderId_example", syncPlayAccess: SyncPlayUserAccessType()) // UserPolicy | The new user policy.

// Updates a user policy.
UserAPI.updateUserPolicy(userId: userId, userPolicy: userPolicy).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String** | The user id. | 
 **userPolicy** | [**UserPolicy**](UserPolicy.md) | The new user policy. | 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

