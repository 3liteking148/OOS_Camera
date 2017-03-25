.class public Lcom/oneplus/camera/OPCameraActivity;
.super Lcom/oneplus/camera/CameraActivity;
.source "OPCameraActivity.java"


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-CaptureCompleteReasonSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-StartModeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I = null

.field private static final DURATION_REMOVE_PREVIEW_BACKGROUND_DELAY:J = 0x3e8L

.field public static final EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/IntentEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field static final EXTRA_AUTO_TEST_SERVICE_ID:Ljava/lang/String; = "com.oneplus.camera.OPCameraActivity.AutoTestServiceId"

.field private static final MSG_REMOVE_PREVIEW_BACKGROUND:I = 0x271a

.field public static final PROP_IS_CAPTURE_UI_INFLATED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_CODE_ADV_SETTINGS:I = 0x3e8


# instance fields
.field private m_AutoTestService:Lcom/oneplus/camera/AutoTestService;

.field private m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

.field private m_CaptureUIContainer:Landroid/view/ViewGroup;

.field private m_IsFirstCameraPreviewReceived:Z

.field private m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

.field private m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;


# direct methods
.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/Rotation;->values()[Lcom/oneplus/base/Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-CaptureCompleteReasonSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-CaptureCompleteReasonSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-CaptureCompleteReasonSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/CaptureCompleteReason;->values()[Lcom/oneplus/camera/CaptureCompleteReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->CANCELLED:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->INVALID_STATE:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_DURATION_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->MAX_FILE_SIZE_REACHED:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->NORMAL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->SAVING_QUEUE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/oneplus/camera/CaptureCompleteReason;

    invoke-virtual {v1}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-CaptureCompleteReasonSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-StartModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-StartModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-StartModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/StartMode;->values()[Lcom/oneplus/camera/StartMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_PHOTO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_VIDEO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/StartMode;->SERVICE_PHOTO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/StartMode;->SERVICE_VIDEO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-StartModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->values()[Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BACKGROUND:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->EMPTY_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/camera/OPCameraActivity;->-com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/OPCameraActivity;Lcom/oneplus/camera/ui/CameraGallery;)Lcom/oneplus/camera/ui/CameraGallery;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/OPCameraActivity;Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)V
    .locals 0
    .param p1, "state"    # Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/OPCameraActivity;->onCameraGalleryStateChanged(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/OPCameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->onCameraPreviewReceived()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/OPCameraActivity;J)V
    .locals 1
    .param p1, "seconds"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/OPCameraActivity;->onElapsedRecordingTimeChanged(J)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/OPCameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->onLaunchCompleted()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 67
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCaptureUIInflated"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/OPCameraActivity;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_CAPTURE_UI_INFLATED:Lcom/oneplus/base/PropertyKey;

    .line 72
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "PrepareAdvancedSettingActivityExtraBundle"

    const-class v2, Lcom/oneplus/camera/IntentEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    .line 87
    sget v0, Lcom/oneplus/camera/BuildFlags;->ROM_VERSION:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 88
    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->REQUIRED_PERMISSION_LIST:Ljava/util/List;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_IsFirstCameraPreviewReceived:Z

    .line 98
    sget-object v0, Lcom/oneplus/camera/ComponentBuilders;->BUILDERS_MAIN_ACTIVITY:[Lcom/oneplus/base/component/ComponentBuilder;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V

    .line 95
    return-void
.end method

.method private bindAutoTestService(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    const-string/jumbo v0, "com.oneplus.camera.OPCameraActivity.AutoTestServiceId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string/jumbo v0, "com.oneplus.camera.OPCameraActivity.AutoTestServiceId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->fromId(I)Lcom/oneplus/camera/AutoTestService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_AutoTestService:Lcom/oneplus/camera/AutoTestService;

    .line 108
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_AutoTestService:Lcom/oneplus/camera/AutoTestService;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bindAutoTestService() - Bind auto-test service : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/OPCameraActivity;->m_AutoTestService:Lcom/oneplus/camera/AutoTestService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bindAutoTestService() - Auto-test service not found"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onBackFromAdvancedSettings(ILandroid/content/Intent;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 197
    iget-object v3, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onBackFromAdvancedSettings()"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getResolutionManager()Lcom/oneplus/camera/media/ResolutionManager;

    move-result-object v1

    .line 201
    .local v1, "resolutionManager":Lcom/oneplus/camera/media/ResolutionManager;
    if-eqz v1, :cond_0

    .line 203
    invoke-interface {v1}, Lcom/oneplus/camera/media/ResolutionManager;->getPhotoResolutionSettingsKey()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "resolutionSettingsKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 206
    sget-object v3, Lcom/oneplus/camera/OPCameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    invoke-virtual {v3, v2}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/camera/media/Resolution;->fromKey(Ljava/lang/String;)Lcom/oneplus/camera/media/Resolution;

    move-result-object v0

    .line 207
    .local v0, "resolution":Lcom/oneplus/camera/media/Resolution;
    if-eqz v0, :cond_1

    .line 209
    iget-object v3, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onBackFromAdvancedSettings() - Selected photo resolution : "

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    sget-object v3, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3, v0}, Lcom/oneplus/camera/media/ResolutionManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 195
    .end local v0    # "resolution":Lcom/oneplus/camera/media/Resolution;
    .end local v2    # "resolutionSettingsKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 213
    .restart local v0    # "resolution":Lcom/oneplus/camera/media/Resolution;
    .restart local v2    # "resolutionSettingsKey":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onBackFromAdvancedSettings() - No selected photo resolution"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCameraGalleryStateChanged(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)V
    .locals 2
    .param p1, "state"    # Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .prologue
    .line 223
    invoke-static {}, Lcom/oneplus/camera/OPCameraActivity;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 230
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->disableBeam()V

    .line 220
    :goto_0
    return-void

    .line 227
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->enableBeam()V

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onCameraPreviewReceived()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 278
    const/16 v0, 0x271a

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 281
    iget-boolean v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_IsFirstCameraPreviewReceived:Z

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_IsFirstCameraPreviewReceived:Z

    .line 284
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_AutoTestService:Lcom/oneplus/camera/AutoTestService;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_AutoTestService:Lcom/oneplus/camera/AutoTestService;

    invoke-virtual {v0, p0}, Lcom/oneplus/camera/AutoTestService;->notifyActivityReady(Lcom/oneplus/camera/OPCameraActivity;)V

    .line 287
    iput-object v4, p0, Lcom/oneplus/camera/OPCameraActivity;->m_AutoTestService:Lcom/oneplus/camera/AutoTestService;

    .line 275
    :cond_0
    return-void
.end method

.method private onElapsedRecordingTimeChanged(J)V
    .locals 7
    .param p1, "seconds"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 494
    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    .line 496
    sget-object v2, Lcom/oneplus/camera/OPCameraActivity;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 497
    .local v0, "maxSeconds":J
    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 498
    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->showMaxVideoDurationMessage()V

    .line 492
    .end local v0    # "maxSeconds":J
    :cond_0
    return-void
.end method

.method private onLaunchCompleted()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLaunchCompleted() - Inflate capture UI [start]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureUIContainer:Landroid/view/ViewGroup;

    .line 528
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLaunchCompleted() - Inflate capture UI [end]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_CAPTURE_UI_INFLATED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/OPCameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 523
    return-void
.end method

.method private prepareAgentActivityIntent(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "agentType"    # I

    .prologue
    .line 564
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 565
    .local v1, "newIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.oneplus.camera.agent.intent.extra.AGENT_TYPE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 568
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 569
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 570
    const-string/jumbo v2, "com.oneplus.camera.agent.intent.extra.COMPONENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 573
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/OPCameraActivity;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v3

    sget-object v2, Lcom/oneplus/camera/OPCameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Rotation;

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 585
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/oneplus/camera/AgentActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 590
    :goto_0
    return-object v1

    .line 576
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/oneplus/camera/LandscapeAgentActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 579
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/oneplus/camera/InversePortraitAgentActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 582
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/oneplus/camera/InverseLandscapeAgentActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 573
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setInitCaptureMode(Lcom/oneplus/camera/capturemode/CaptureModeManager;)V
    .locals 8
    .param p1, "captureModeManager"    # Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .prologue
    const/4 v7, 0x0

    .line 598
    const/4 v1, 0x0

    .line 599
    .local v1, "isPhotoCaptureMode":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getStartMode()Lcom/oneplus/camera/StartMode;

    move-result-object v3

    .line 600
    .local v3, "startmode":Lcom/oneplus/camera/StartMode;
    if-eqz p1, :cond_0

    .line 602
    invoke-static {}, Lcom/oneplus/camera/OPCameraActivity;->-getcom-oneplus-camera-StartModeSwitchesValues()[I

    move-result-object v5

    invoke-virtual {v3}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 617
    sget-object v5, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v5}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 618
    .local v0, "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    sget-object v5, Lcom/oneplus/camera/OPCameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    instance-of v5, v0, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-eqz v5, :cond_1

    .line 623
    .end local v0    # "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 625
    const-class v5, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    invoke-interface {p1, v5}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->findCaptureMode(Ljava/lang/Class;)Lcom/oneplus/camera/capturemode/CaptureMode;

    move-result-object v2

    .line 626
    .local v2, "photoMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    if-eqz v2, :cond_2

    .line 628
    invoke-interface {p1, v2, v7}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    .line 629
    return-void

    .line 606
    .end local v2    # "photoMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :pswitch_0
    const/4 v1, 0x1

    .line 607
    goto :goto_0

    .line 609
    :pswitch_1
    const-class v5, Lcom/oneplus/camera/capturemode/VideoCaptureMode;

    invoke-interface {p1, v5}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->findCaptureMode(Ljava/lang/Class;)Lcom/oneplus/camera/capturemode/CaptureMode;

    move-result-object v4

    .line 610
    .local v4, "videoMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    if-eqz v4, :cond_0

    .line 612
    invoke-interface {p1, v4, v7}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    .line 613
    return-void

    .line 619
    .end local v4    # "videoMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    .restart local v0    # "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 633
    .end local v0    # "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_2
    invoke-interface {p1, v7}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->changeToInitialCaptureMode(I)Z

    .line 595
    return-void

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showMaxVideoDurationMessage()V
    .locals 9

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getResolutionManager()Lcom/oneplus/camera/media/ResolutionManager;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/media/Resolution;

    .line 686
    .local v3, "resolution":Lcom/oneplus/camera/media/Resolution;
    sget-object v5, Lcom/oneplus/camera/OPCameraActivity;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 687
    .local v0, "maxSeconds":J
    if-eqz v3, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-ltz v5, :cond_0

    .line 690
    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->is4kVideo()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 691
    const v5, 0x7f0b0038

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 698
    .local v4, "resolutionStr":Ljava/lang/String;
    :goto_0
    const v5, 0x7f0b0045

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {p0, v0, v1}, Lcom/oneplus/camera/util/StringUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 699
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/OPCameraActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 683
    .end local v2    # "message":Ljava/lang/String;
    .end local v4    # "resolutionStr":Ljava/lang/String;
    :cond_0
    return-void

    .line 692
    :cond_1
    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->is1080pVideo()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 693
    const v5, 0x7f0b0037

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "resolutionStr":Ljava/lang/String;
    goto :goto_0

    .line 694
    .end local v4    # "resolutionStr":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->is720pVideo()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 695
    const v5, 0x7f0b0039

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "resolutionStr":Ljava/lang/String;
    goto :goto_0

    .line 697
    .end local v4    # "resolutionStr":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private showPreviewBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 707
    const/16 v0, 0x271a

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 708
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showPreviewBackground()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 705
    :cond_0
    return-void
.end method


# virtual methods
.method protected getBeamUris()[Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    iget-object v2, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    if-nez v2, :cond_0

    .line 123
    return-object v4

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    sget-object v3, Lcom/oneplus/camera/ui/CameraGallery;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/ui/CameraGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 127
    .local v1, "state":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    invoke-static {}, Lcom/oneplus/camera/OPCameraActivity;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 134
    return-object v4

    .line 131
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    sget-object v3, Lcom/oneplus/camera/ui/CameraGallery;->PROP_CURRENT_CONTENT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/ui/CameraGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 132
    .local v0, "contentUri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    return-object v2

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getCaptureUIContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureUIContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getSceneManager()Lcom/oneplus/camera/scene/SceneManager;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 162
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 174
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraActivity;->handleMessage(Landroid/os/Message;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage() - Remove preview background"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x271a
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 184
    packed-switch p1, :pswitch_data_0

    .line 190
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 182
    return-void

    .line 187
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/oneplus/camera/OPCameraActivity;->onBackFromAdvancedSettings(ILandroid/content/Intent;)V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method protected onCameraOpenFailedError(Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    .prologue
    .line 240
    sget-object v1, Lcom/oneplus/camera/OPCameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 243
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;->getErrorCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 264
    :pswitch_0
    const v0, 0x7f0b004d

    .line 267
    .local v0, "messageID":I
    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 270
    .end local v0    # "messageID":I
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onCameraOpenFailedError(Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V

    .line 238
    return-void

    .line 246
    :pswitch_1
    const v0, 0x7f0b0048

    .line 247
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 249
    .end local v0    # "messageID":I
    :pswitch_2
    const v0, 0x7f0b0049

    .line 250
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 252
    .end local v0    # "messageID":I
    :pswitch_3
    const v0, 0x7f0b004b

    .line 253
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 255
    .end local v0    # "messageID":I
    :pswitch_4
    const v0, 0x7f0b004c

    .line 256
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 258
    .end local v0    # "messageID":I
    :pswitch_5
    const v0, 0x7f0b004e

    .line 259
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 261
    .end local v0    # "messageID":I
    :pswitch_6
    const v0, 0x7f0b004a

    .line 262
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method protected onCaptureCompleted(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;

    .prologue
    .line 299
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    .line 302
    invoke-static {}, Lcom/oneplus/camera/OPCameraActivity;->-getcom-oneplus-camera-CaptureCompleteReasonSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 305
    :pswitch_0
    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureHandle;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 306
    const v0, 0x7f0b0046

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->showToast(I)V

    goto :goto_0

    .line 310
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->showMaxVideoDurationMessage()V

    goto :goto_0

    .line 314
    :pswitch_2
    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->showToast(I)V

    goto :goto_0

    .line 318
    :pswitch_3
    const v0, 0x7f0b0050

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->showToast(I)V

    goto :goto_0

    .line 322
    :pswitch_4
    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureHandle;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 323
    const v0, 0x7f0b0047

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->showToast(I)V

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 334
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 336
    sget-object v8, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_MULTI_WINDOW_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 338
    const v8, 0x7f0b0051

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 339
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->finish()V

    .line 340
    return-void

    .line 344
    :cond_0
    invoke-static {p0}, Lcom/oneplus/camera/OPCameraApplication;->notifyInstanceCreated(Lcom/oneplus/camera/CameraActivity;)V

    .line 347
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/oneplus/camera/OPCameraActivity;->bindAutoTestService(Landroid/content/Intent;)V

    .line 350
    sget-object v8, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_LAUNCHING:Lcom/oneplus/base/PropertyKey;

    new-instance v9, Lcom/oneplus/camera/OPCameraActivity$1;

    invoke-direct {v9, p0}, Lcom/oneplus/camera/OPCameraActivity$1;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 361
    const-class v8, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 362
    .local v1, "captureModeManager":Lcom/oneplus/camera/capturemode/CaptureModeManager;
    if-eqz v1, :cond_1

    .line 364
    const/4 v3, 0x0

    .local v3, "i":I
    sget-object v8, Lcom/oneplus/camera/CaptureModeBuilders;->BUILDERS:[Lcom/oneplus/camera/capturemode/CaptureModeBuilder;

    array-length v2, v8

    .local v2, "count":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 365
    sget-object v8, Lcom/oneplus/camera/CaptureModeBuilders;->BUILDERS:[Lcom/oneplus/camera/capturemode/CaptureModeBuilder;

    aget-object v8, v8, v3

    invoke-interface {v1, v8, v10}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addBuilder(Lcom/oneplus/camera/capturemode/CaptureModeBuilder;I)Z

    .line 364
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1
    iget-object v8, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "onCreate() - No CaptureModeManager"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_2
    if-eqz v1, :cond_3

    .line 372
    invoke-direct {p0, v1}, Lcom/oneplus/camera/OPCameraActivity;->setInitCaptureMode(Lcom/oneplus/camera/capturemode/CaptureModeManager;)V

    .line 376
    :cond_3
    new-instance v4, Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    invoke-direct {v4}, Lcom/oneplus/camera/CameraThread$ResourceIdTable;-><init>()V

    .line 377
    .local v4, "resIdTable":Lcom/oneplus/camera/CameraThread$ResourceIdTable;
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    .line 378
    .local v0, "cameraThread":Lcom/oneplus/camera/CameraThread;
    sget-object v8, Lcom/oneplus/camera/ComponentBuilders;->BUILDERS_CAMERA_THREAD:[Lcom/oneplus/base/component/ComponentBuilder;

    invoke-virtual {v0, v8}, Lcom/oneplus/camera/CameraThread;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V

    .line 379
    const v8, 0x7f060004

    iput v8, v4, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->burstShutterSound:I

    .line 380
    const v8, 0x7f060005

    iput v8, v4, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->burstShutterSoundEnd:I

    .line 381
    const v8, 0x7f060006

    iput v8, v4, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->photoShutterSound:I

    .line 382
    const v8, 0x7f060003

    iput v8, v4, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStartSound:I

    .line 383
    const v8, 0x7f060002

    iput v8, v4, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStopSound:I

    .line 384
    const/high16 v8, 0x7f060000

    iput v8, v4, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->cameraTimerSound:I

    .line 385
    const v8, 0x7f060001

    iput v8, v4, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->cameraTimer2SecSound:I

    .line 386
    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraThread;->setResourceIdTable(Lcom/oneplus/camera/CameraThread$ResourceIdTable;)V

    .line 387
    sget-object v8, Lcom/oneplus/camera/OPCameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v0, v8}, Lcom/oneplus/camera/CameraThread;->start(Lcom/oneplus/camera/media/MediaType;)V

    .line 390
    const-class v8, Lcom/oneplus/camera/scene/SceneManager;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/scene/SceneManager;

    iput-object v8, p0, Lcom/oneplus/camera/OPCameraActivity;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    .line 391
    iget-object v8, p0, Lcom/oneplus/camera/OPCameraActivity;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v8, :cond_4

    .line 393
    const/4 v3, 0x0

    .restart local v3    # "i":I
    sget-object v8, Lcom/oneplus/camera/SceneBuilders;->BUILDERS:[Lcom/oneplus/camera/scene/SceneBuilder;

    array-length v2, v8

    .restart local v2    # "count":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 394
    iget-object v8, p0, Lcom/oneplus/camera/OPCameraActivity;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v9, Lcom/oneplus/camera/SceneBuilders;->BUILDERS:[Lcom/oneplus/camera/scene/SceneBuilder;

    aget-object v9, v9, v3

    invoke-interface {v8, v9, v10}, Lcom/oneplus/camera/scene/SceneManager;->addBuilder(Lcom/oneplus/camera/scene/SceneBuilder;I)Z

    .line 393
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 397
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_4
    iget-object v8, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "onCreate() - No SceneManager interface"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_5
    sget-object v8, Lcom/oneplus/camera/OPCameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    new-instance v9, Lcom/oneplus/camera/OPCameraActivity$2;

    invoke-direct {v9, p0}, Lcom/oneplus/camera/OPCameraActivity$2;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 411
    sget-object v8, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    new-instance v9, Lcom/oneplus/camera/OPCameraActivity$3;

    invoke-direct {v9, p0}, Lcom/oneplus/camera/OPCameraActivity$3;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 422
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 423
    .local v6, "window":Landroid/view/Window;
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 424
    .local v7, "windowAttrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v8, 0x2

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 425
    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 428
    const v8, 0x7f0b0089

    iput v8, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageToast:I

    .line 429
    const v8, 0x7f0b008a

    iput v8, p0, Lcom/oneplus/camera/CameraActivity;->m_StorageStopRecordToast:I

    .line 432
    const v8, 0x7f030005

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/OPCameraActivity;->setContentView(I)V

    .line 435
    const v8, 0x7f09001c

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/OPCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/SurfaceView;

    iput-object v8, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    .line 436
    iget-object v8, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    if-eqz v8, :cond_6

    .line 438
    iget-object v8, p0, Lcom/oneplus/camera/OPCameraActivity;->m_PreviewBackgroundSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v8}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    .line 439
    .local v5, "surfaceHolder":Landroid/view/SurfaceHolder;
    new-instance v8, Lcom/oneplus/camera/OPCameraActivity$4;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/OPCameraActivity$4;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    invoke-interface {v5, v8}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 460
    .end local v5    # "surfaceHolder":Landroid/view/SurfaceHolder;
    :cond_6
    const-class v8, Lcom/oneplus/camera/ui/CameraGallery;

    new-instance v9, Lcom/oneplus/camera/OPCameraActivity$5;

    invoke-direct {v9, p0}, Lcom/oneplus/camera/OPCameraActivity$5;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    invoke-static {p0, v8, p0, v9}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 331
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 484
    invoke-super {p0}, Lcom/oneplus/camera/CameraActivity;->onDestroy()V

    .line 487
    invoke-static {p0}, Lcom/oneplus/camera/OPCameraApplication;->notifyInstanceDestroyed(Lcom/oneplus/camera/CameraActivity;)V

    .line 481
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 507
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/OPCameraActivity;->m_IsFirstCameraPreviewReceived:Z

    .line 510
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 513
    invoke-direct {p0, p1}, Lcom/oneplus/camera/OPCameraActivity;->bindAutoTestService(Landroid/content/Intent;)V

    .line 516
    const-class v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 517
    .local v0, "captureModeManager":Lcom/oneplus/camera/capturemode/CaptureModeManager;
    if-eqz v0, :cond_0

    .line 518
    invoke-direct {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->setInitCaptureMode(Lcom/oneplus/camera/capturemode/CaptureModeManager;)V

    .line 504
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 538
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800ea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 539
    .local v0, "boundBottom":I
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800e9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 540
    .local v1, "boundTop":I
    if-lez v1, :cond_0

    .line 541
    add-int/2addr v0, v1

    .line 542
    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    const/4 v5, 0x0

    int-to-float v6, v1

    sget-object v4, Lcom/oneplus/camera/OPCameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/ScreenSize;

    invoke-virtual {v4}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v4

    int-to-float v4, v4

    int-to-float v7, v0

    invoke-direct {v2, v5, v6, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 543
    .local v2, "buounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getViewfinder()Lcom/oneplus/camera/ui/Viewfinder;

    move-result-object v3

    .line 544
    .local v3, "viewFinder":Lcom/oneplus/camera/ui/Viewfinder;
    invoke-interface {v3, v2, v8}, Lcom/oneplus/camera/ui/Viewfinder;->setPreferredPreviewBounds(Landroid/graphics/RectF;I)V

    .line 547
    invoke-super {p0}, Lcom/oneplus/camera/CameraActivity;->onResume()V

    .line 535
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->showPreviewBackground()V

    .line 556
    invoke-super {p0}, Lcom/oneplus/camera/CameraActivity;->onStop()V

    .line 553
    return-void
.end method

.method public final showAdvancedSettings()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 647
    :try_start_0
    sget-object v6, Lcom/oneplus/camera/OPCameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/Settings;

    .line 648
    .local v5, "settings":Lcom/oneplus/base/Settings;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/oneplus/camera/AdvancedSettingsActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 651
    .local v2, "intent":Landroid/content/Intent;
    sget-object v6, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    new-instance v7, Lcom/oneplus/camera/IntentEventArgs;

    invoke-direct {v7, v2}, Lcom/oneplus/camera/IntentEventArgs;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/camera/OPCameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 652
    const-string/jumbo v6, "Settings.Name"

    invoke-virtual {v5}, Lcom/oneplus/base/Settings;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    const-string/jumbo v6, "Settings.IsVolatile"

    invoke-virtual {v5}, Lcom/oneplus/base/Settings;->isVolatile()Z

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 654
    const-string/jumbo v6, "StartMode"

    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getStartMode()Lcom/oneplus/camera/StartMode;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 655
    sget-object v6, Lcom/oneplus/camera/OPCameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 656
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_1

    .line 657
    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v6, v7, :cond_1

    .line 658
    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 656
    if-eqz v6, :cond_1

    .line 660
    sget-object v6, Lcom/oneplus/camera/OPCameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/media/MediaType;

    .line 661
    .local v3, "mediaType":Lcom/oneplus/camera/media/MediaType;
    sget-object v6, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-eq v3, v6, :cond_0

    sget-object v6, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 662
    :cond_0
    const-string/jumbo v6, "IsMirrorSupported"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 664
    .end local v3    # "mediaType":Lcom/oneplus/camera/media/MediaType;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getMediaResultInfo()Lcom/oneplus/camera/MediaResultInfo;

    move-result-object v4

    .line 665
    .local v4, "resultInfo":Lcom/oneplus/camera/MediaResultInfo;
    if-eqz v4, :cond_2

    iget-object v6, v4, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    if-eqz v6, :cond_2

    .line 666
    const-string/jumbo v6, "OutputUri"

    iget-object v7, v4, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    :cond_2
    const/16 v6, 0x3e8

    invoke-virtual {p0, v2, v6}, Lcom/oneplus/camera/OPCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    return v8

    .line 672
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "resultInfo":Lcom/oneplus/camera/MediaResultInfo;
    .end local v5    # "settings":Lcom/oneplus/base/Settings;
    :catch_0
    move-exception v1

    .line 673
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    iget-object v6, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "showAdvancedSettings() - Fail to start activity"

    invoke-static {v6, v7, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 674
    const/4 v6, 0x0

    return v6
.end method

.method public startActivityByAgent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 723
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/OPCameraActivity;->prepareAgentActivityIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 721
    return-void
.end method

.method public startActivityForResultByAgent(Landroid/content/Intent;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;

    .prologue
    .line 735
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/OPCameraActivity;->prepareAgentActivityIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/camera/OPCameraActivity;->startActivityForResult(Landroid/content/Intent;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method
