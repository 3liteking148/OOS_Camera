.class Lcom/oneplus/camera/UIExposureControllerImpl$3;
.super Ljava/lang/Object;
.source "UIExposureControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/UIExposureControllerImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Lcom/oneplus/camera/media/Resolution;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/UIExposureControllerImpl;

.field final synthetic val$activity:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/UIExposureControllerImpl;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/UIExposureControllerImpl;
    .param p2, "val$activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/oneplus/camera/UIExposureControllerImpl$3;->this$0:Lcom/oneplus/camera/UIExposureControllerImpl;

    iput-object p2, p0, Lcom/oneplus/camera/UIExposureControllerImpl$3;->val$activity:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/media/Resolution;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/media/Resolution;>;"
    iget-object v0, p0, Lcom/oneplus/camera/UIExposureControllerImpl$3;->val$activity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oneplus/camera/UIExposureControllerImpl$3;->this$0:Lcom/oneplus/camera/UIExposureControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/UIExposureControllerImpl;->-wrap1(Lcom/oneplus/camera/UIExposureControllerImpl;)V

    .line 129
    :cond_0
    return-void
.end method
