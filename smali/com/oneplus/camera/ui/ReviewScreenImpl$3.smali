.class Lcom/oneplus/camera/ui/ReviewScreenImpl$3;
.super Ljava/lang/Object;
.source "ReviewScreenImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ReviewScreenImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

.field final synthetic val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

.field final synthetic val$cameraThread:Lcom/oneplus/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ReviewScreenImpl;
    .param p2, "val$cameraThread"    # Lcom/oneplus/camera/CameraThread;
    .param p3, "val$cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    iput-object p2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$cameraThread:Lcom/oneplus/camera/CameraThread;

    iput-object p3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 512
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$cameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$1;

    iget-object v3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$1;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl$3;Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 526
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$cameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$2;

    iget-object v3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$2;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl$3;Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 546
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$cameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$3;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 569
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$cameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$4;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 585
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$cameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$5;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 509
    return-void
.end method