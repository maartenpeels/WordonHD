.class public Lcom/google/android/gms/drive/events/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(ILcom/google/android/gms/drive/DriveId;)Z
    .locals 5

    const/4 v4, 0x1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x4

    shl-int v2, v4, p0

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
