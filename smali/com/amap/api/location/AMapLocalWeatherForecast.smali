.class public Lcom/amap/api/location/AMapLocalWeatherForecast;
.super Ljava/lang/Object;
.source "AMapLocalWeatherForecast.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/location/AMapLocalDayWeatherForecast;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/location/core/AMapLocException;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/amap/api/location/core/AMapLocException;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/amap/api/location/AMapLocalWeatherForecast;->c:Lcom/amap/api/location/core/AMapLocException;

    .line 26
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amap/api/location/AMapLocalWeatherForecast;->a:Ljava/lang/String;

    .line 32
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/location/AMapLocalDayWeatherForecast;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lcom/amap/api/location/AMapLocalWeatherForecast;->b:Ljava/util/List;

    .line 38
    return-void
.end method

.method public getAMapException()Lcom/amap/api/location/core/AMapLocException;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amap/api/location/AMapLocalWeatherForecast;->c:Lcom/amap/api/location/core/AMapLocException;

    return-object v0
.end method

.method public getReportTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amap/api/location/AMapLocalWeatherForecast;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherForecast()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/location/AMapLocalDayWeatherForecast;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amap/api/location/AMapLocalWeatherForecast;->b:Ljava/util/List;

    return-object v0
.end method
