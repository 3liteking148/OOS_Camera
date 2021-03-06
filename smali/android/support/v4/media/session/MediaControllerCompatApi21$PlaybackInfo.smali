.class public Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaybackInfo"
.end annotation


# static fields
.field private static final FLAG_SCO:I = 0x4

.field private static final STREAM_BLUETOOTH_SCO:I = 0x6

.field private static final STREAM_SYSTEM_ENFORCED:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;
    .locals 1

    .prologue
    .line 181
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentVolume(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 198
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v0

    return v0
.end method

.method public static getLegacyAudioStream(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 185
    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;

    move-result-object v0

    .line 186
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public static getMaxVolume(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 194
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v0

    return v0
.end method

.method public static getPlaybackType(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 177
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v0

    return v0
.end method

.method public static getVolumeControl(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 190
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v0

    return v0
.end method

.method private static toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 209
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v1, :cond_0

    .line 213
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eq v0, v3, :cond_1

    .line 218
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 242
    :pswitch_0
    return v2

    :cond_0
    const/4 v0, 0x7

    .line 211
    return v0

    :cond_1
    const/4 v0, 0x6

    .line 214
    return v0

    .line 223
    :pswitch_1
    return v2

    .line 225
    :pswitch_2
    return v1

    :pswitch_3
    const/4 v0, 0x0

    .line 227
    return v0

    :pswitch_4
    const/16 v0, 0x8

    .line 229
    return v0

    .line 231
    :pswitch_5
    return v3

    :pswitch_6
    const/4 v0, 0x2

    .line 233
    return v0

    :pswitch_7
    const/4 v0, 0x5

    .line 239
    return v0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
