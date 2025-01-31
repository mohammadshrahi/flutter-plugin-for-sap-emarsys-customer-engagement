//
//  Created by Emarsys on 2021. 04. 22..
//

import XCTest
@testable import emarsys_sdk
import EmarsysSDK

class EmarsysCommandFactoryTests: XCTestCase {
    
    var factory: EmarsysCommandFactory?
    
    override func setUpWithError() throws {
        factory = EmarsysCommandFactory(
            pushEventHandler: {name, payload in },
            silentPushEventHandler: {name, payload in },
            inboxMapper: InboxMapper(),
            geofenceEventHandler: {name, payload in },
            inAppEventHandler: {name, payload in},
            mapToProductMapper: MapToProductMapper(),
            productsMapper: ProductsMapper(),
            logicMapper: LogicMapper(),
            recommendationFilterMapper: RecommendationFilterMapper(),
            geofencesMapper: GeofencesMapper())
    }
    
    func testCreate_setup() throws {
        let command = factory?.create(name: "setup")
        
        XCTAssertTrue(command is SetupCommand)
    }
    
    func testCreate_setContact() throws {
        let command = factory?.create(name: "setContact")
        
        XCTAssertTrue(command is SetContactCommand)
    }
    
    func testCreate_clearContact() throws {
        let command = factory?.create(name: "clearContact")
        
        XCTAssertTrue(command is ClearContactCommand)
    }
    
    func testCreate_returnNilWhenInvalid() throws {
        let command = factory?.create(name: "invalidCommandNameTest")
        
        XCTAssertNil(command)
    }
    
    func testCreate_enablePushSending() throws {
        let command = factory?.create(name: "push.pushSendingEnabled")
        
        XCTAssertTrue(command is PushSendingEnabledCommand)
    }
    
    func testCreate_setPushToken() throws {
        let command = factory?.create(name: "push.setPushToken")
        
        XCTAssertTrue(command is SetPushTokenCommand)
    }
    
    func testCreate_applicationCodeCommand() throws {
        let command = factory?.create(name: "config.applicationCode")
        
        XCTAssertTrue(command is ApplicationCodeCommand)
    }
    
    func testCreate_merchantIdCommand() throws {
        let command = factory?.create(name: "config.merchantId")
        
        XCTAssertTrue(command is MerchantIdCommand)
    }
    
    func testCreate_contactFieldIdCommand() throws {
        let command = factory?.create(name: "config.contactFieldId")
        
        XCTAssertTrue(command is ContactFieldIdCommand)
    }
    
    func testCreate_hardwareIdCommand() throws {
        let command = factory?.create(name: "config.hardwareId")
        
        XCTAssertTrue(command is HardwareIdCommand)
    }
    
    func testCreate_languageCodeCommand() throws {
        let command = factory?.create(name: "config.languageCode")
        
        XCTAssertTrue(command is LanguageCodeCommand)
    }
    
    func testCreate_pushSettingsCommand() throws {
        let command = factory?.create(name: "config.notificationSettings")
        
        XCTAssertTrue(command is NotificationSettingsCommand)
    }
    
    func testCreate_sdkVersionCommand() throws {
        let command = factory?.create(name: "config.sdkVersion")
        
        XCTAssertTrue(command is SdkVersionCommand)
    }
    
    func testCreate_changeApplicationCodeCommand() throws {
        let command = factory?.create(name: "config.changeApplicationCode")
        
        XCTAssertTrue(command is ChangeApplicationCodeCommand)
    }
    
    func testCreate_changeMerchantIdCommand() throws {
        let command = factory?.create(name: "config.changeMerchantId")
        
        XCTAssertTrue(command is ChangeMerchantIdCommand)
    }
    
    func testCreate_trackCustomEventCommand() throws {
        let command = factory?.create(name: "trackCustomEvent")
        
        XCTAssertTrue(command is TrackCustomEventCommand)
    }
    
    func testCreate_fetchMessagesCommand() throws {
        let command = factory?.create(name: "inbox.fetchMessages")
        
        XCTAssertTrue(command is FetchMessagesCommand)
    }
    
    func testCreate_addTagCommand() throws {
        let command = factory?.create(name: "inbox.addTag")
        
        XCTAssertTrue(command is AddTagCommand)
    }
    
    func testCreate_removeTagCommand() throws {
        let command = factory?.create(name: "inbox.removeTag")
        
        XCTAssertTrue(command is RemoveTagCommand)
    }
    
    func testCreate_enable() throws {
        let command = factory?.create(name: "geofence.enable")
        
        XCTAssertTrue(command is GeofenceEnableCommand)
    }
    
    func testCreate_disable() throws {
        let command = factory?.create(name: "geofence.disable")
        
        XCTAssertTrue(command is GeofenceDisableCommand)
    }
    
    func testCreate_setInitialEnterTriggerEnabled() throws {
        let command = factory?.create(name: "geofence.setInitialEnterTriggerEnabled")
        
        XCTAssertTrue(command is GeofenceSetInitialEnterTriggerEnabledCommand)
    }
    
    func testCreate_iOSRequestAlwaysAuthorization() throws {
        let command = factory?.create(name: "geofence.ios.requestAlwaysAuthorization")
        
        XCTAssertTrue(command is GeofenceiOSRequestAlwaysAuthorizationCommand)
    }
    
    func testCreate_isEnabled() throws {
        let command = factory?.create(name: "geofence.isEnabled")
        
        XCTAssertTrue(command is GeofenceisEnabledCommand)
    }
    
    func testCreate_registeredGeofences() throws {
        let command = factory?.create(name: "geofence.registeredGeofences")
        
        XCTAssertTrue(command is GeofenceRegisteredGeofencesCommand)
    }
    
    func testCreate_pause() throws {
        let command = factory?.create(name: "inApp.pause")
        
        XCTAssertTrue(command is InAppPauseCommand)
    }
    
    func testCreate_resume() throws {
        let command = factory?.create(name: "inApp.resume")
        
        XCTAssertTrue(command is InAppResumeCommand)
    }
    
    func testCreate_isPaused() throws {
        let command = factory?.create(name: "inApp.isPaused")
        
        XCTAssertTrue(command is InAppIsPausedCommand)
    }
    
    func testCreate_trackCartItem() throws {
        let command = factory?.create(name: "predict.trackCart")
        
        XCTAssertTrue(command is TrackCartItemCommand)
    }
    
    func testCreate_trackPurchase() throws {
        let command = factory?.create(name: "predict.trackPurchase")
        
        XCTAssertTrue(command is TrackPurchaseCommand)
    }
    
    func testCreate_trackCategory() throws {
        let command = factory?.create(name: "predict.trackCategoryView")
        
        XCTAssertTrue(command is TrackCategoryCommand)
    }
    
    func testCreate_trackSearchTerm() throws {
        let command = factory?.create(name: "predict.trackSearchTerm")
        
        XCTAssertTrue(command is TrackSearchTermCommand)
    }
    
    func testCreate_trackTag() throws {
        let command = factory?.create(name: "predict.trackTag")
        
        XCTAssertTrue(command is TrackTagCommand)
    }
    
    func testCreate_trackItemView() throws {
        let command = factory?.create(name: "predict.trackItemView")
        
        XCTAssertTrue(command is TrackItemViewCommand)
    }
    func testCreate_recommendProducts() throws {
        let command = factory?.create(name: "predict.recommendProducts")
        
        XCTAssertTrue(command is RecommendProductsCommand)
    }
    func testCreate_trackRecommendationClick() throws {
        let command = factory?.create(name: "predict.trackRecommendationClick")
        
        XCTAssertTrue(command is TrackRecommendationClickCommand)
    }
}

