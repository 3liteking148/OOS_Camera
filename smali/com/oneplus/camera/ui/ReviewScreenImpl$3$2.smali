.class Lcom/oneplus/camera/ui/ReviewScreenImpl$3$2;
.super Ljava/lang/Object;
.source "ReviewScreenImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/camera/media/MediaEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$3;

.field final synthetic val$cameraActivity:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ReviewScreenImpl$3;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/ReviewScreenImpl$3;
    .param p2, "val$cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$3;

    iput-object p2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$2;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p2, "key"    # Lcom/oneplus/base/EventKey;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 529
    check-cast p3, Lcom/oneplus/camera/media/MediaEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 7
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/camera/media/MediaEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/media/MediaEventArgs;>;"
    const/4 v6, 0x0

    .line 531
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$2;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$3;

    iget-object v2, v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get1(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 533
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$3;

    iget-object v1, v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EVENT_MEDIA_SAVED - Current handle: "

    iget-object v3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$3;

    iget-object v3, v3, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get1(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v3

    const-string/jumbo v4, ", handle in media: "

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 536
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$3;

    iget-object v1, v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    const/16 v2, 0x2716

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 539
    new-instance v0, Lcom/oneplus/camera/MediaInfo;

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/MediaInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 540
    .local v0, "mediaInfo":Lcom/oneplus/camera/MediaInfo;
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$2;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$3;

    iget-object v1, v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    const/16 v2, 0x2712

    invoke-static {v1, v2, v6, v6, v0}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 529
    .end local v0    # "mediaInfo":Lcom/oneplus/camera/MediaInfo;
    :cond_0
    return-void
.end method
