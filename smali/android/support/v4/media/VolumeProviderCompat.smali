.class public abstract Landroid/support/v4/media/VolumeProviderCompat;
.super Ljava/lang/Object;
.source "VolumeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/VolumeProviderCompat$Callback;
    }
.end annotation


# static fields
.field public static final VOLUME_CONTROL_ABSOLUTE:I = 0x2

.field public static final VOLUME_CONTROL_FIXED:I = 0x0

.field public static final VOLUME_CONTROL_RELATIVE:I = 0x1


# instance fields
.field private mCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

.field private final mControlType:I

.field private mCurrentVolume:I

.field private final mMaxVolume:I

.field private mVolumeProviderObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Landroid/support/v4/media/VolumeProviderCompat;->mControlType:I

    .line 67
    iput p2, p0, Landroid/support/v4/media/VolumeProviderCompat;->mMaxVolume:I

    .line 68
    iput p3, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCurrentVolume:I

    .line 69
    return-void
.end method


# virtual methods
.method public final getCurrentVolume()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCurrentVolume:I

    return v0
.end method

.method public final getMaxVolume()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mMaxVolume:I

    return v0
.end method

.method public final getVolumeControl()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mControlType:I

    return v0
.end method

.method public getVolumeProvider()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    return-object v0

    .line 145
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 149
    iget v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mControlType:I

    iget v1, p0, Landroid/support/v4/media/VolumeProviderCompat;->mMaxVolume:I

    iget v2, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCurrentVolume:I

    new-instance v3, Landroid/support/v4/media/VolumeProviderCompat$1;

    invoke-direct {v3, p0}, Landroid/support/v4/media/VolumeProviderCompat$1;-><init>(Landroid/support/v4/media/VolumeProviderCompat;)V

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/media/VolumeProviderCompatApi21;->createVolumeProvider(IIILandroid/support/v4/media/VolumeProviderCompatApi21$Delegate;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    return-object v0
.end method

.method public onAdjustVolume(I)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    .line 134
    return-void
.end method

.method public final setCurrentVolume(I)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    invoke-virtual {v0, p0}, Landroid/support/v4/media/VolumeProviderCompat$Callback;->onVolumeChanged(Landroid/support/v4/media/VolumeProviderCompat;)V

    goto :goto_0
.end method
