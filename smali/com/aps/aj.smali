.class final Lcom/aps/aj;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:S

.field protected b:I

.field protected c:B


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short v0, p0, Lcom/aps/aj;->a:S

    iput v0, p0, Lcom/aps/aj;->b:I

    iput-byte v0, p0, Lcom/aps/aj;->c:B

    return-void
.end method
