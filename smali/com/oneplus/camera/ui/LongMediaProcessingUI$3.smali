.class Lcom/oneplus/camera/ui/LongMediaProcessingUI$3;
.super Ljava/lang/Object;
.source "LongMediaProcessingUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/LongMediaProcessingUI;->onInitialize()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/LongMediaProcessingUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/LongMediaProcessingUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/LongMediaProcessingUI;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI$3;->this$0:Lcom/oneplus/camera/ui/LongMediaProcessingUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/oneplus/camera/ui/LongMediaProcessingUI$3;->this$0:Lcom/oneplus/camera/ui/LongMediaProcessingUI;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/LongMediaProcessingUI;->-wrap0(Lcom/oneplus/camera/ui/LongMediaProcessingUI;Ljava/lang/Boolean;)V

    .line 127
    return-void
.end method
