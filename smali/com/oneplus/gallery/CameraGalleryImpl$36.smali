.class Lcom/oneplus/gallery/CameraGalleryImpl$36;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 5244
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$36;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 5249
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$36;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$36;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get9(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/widget/FilmstripView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap1(Lcom/oneplus/gallery/CameraGalleryImpl;I)Z

    .line 5247
    return-void
.end method