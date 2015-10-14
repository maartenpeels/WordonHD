.class public Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;
.super Ljava/lang/Object;
.source "HeyzapAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/ads/HeyzapAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdsConfig"
.end annotation


# instance fields
.field public flags:I

.field public publisherId:Ljava/lang/String;

.field public startTime:Ljava/lang/Long;

.field public store:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    const-string v0, "google"

    iput-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->store:Ljava/lang/String;

    return-void
.end method
