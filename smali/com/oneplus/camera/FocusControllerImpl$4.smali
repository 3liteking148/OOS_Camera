.class Lcom/oneplus/camera/FocusControllerImpl$4;
.super Lcom/oneplus/base/Handle;
.source "FocusControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/FocusControllerImpl;->lockFocus(I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/FocusControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/FocusControllerImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/FocusControllerImpl;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/oneplus/camera/FocusControllerImpl$4;->this$0:Lcom/oneplus/camera/FocusControllerImpl;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oneplus/camera/FocusControllerImpl$4;->this$0:Lcom/oneplus/camera/FocusControllerImpl;

    invoke-static {v0, p0}, Lcom/oneplus/camera/FocusControllerImpl;->-wrap4(Lcom/oneplus/camera/FocusControllerImpl;Lcom/oneplus/base/Handle;)V

    .line 113
    return-void
.end method
