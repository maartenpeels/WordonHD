.class public final Lcom/google/android/gms/location/LocationStatusCodes;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR:I = 0x1

.field public static final GEOFENCE_NOT_AVAILABLE:I = 0x3e8

.field public static final GEOFENCE_TOO_MANY_GEOFENCES:I = 0x3e9

.field public static final GEOFENCE_TOO_MANY_PENDING_INTENTS:I = 0x3ea

.field public static final SUCCESS:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bz(I)I
    .locals 2

    const/4 v1, 0x1

    if-ltz p0, :cond_0

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v0, 0x3e8

    if-gt v0, p0, :cond_2

    const/16 v0, 0x3ea

    if-gt p0, v0, :cond_2

    :cond_1
    move v0, p0

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method