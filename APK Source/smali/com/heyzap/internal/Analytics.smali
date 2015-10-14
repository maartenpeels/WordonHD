.class public Lcom/heyzap/internal/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# static fields
.field private static final HEYZAP_ANALYTICS_ID_PREF:Ljava/lang/String; = "heyzap_button_analytics_id"

.field private static final HEYZAP_ENDPOINT:Ljava/lang/String; = "sdk_event"

.field static final HEYZAP_SDK_PLATFORM:Ljava/lang/String; = "android"

.field public static final HEYZAP_SDK_VERSION:Ljava/lang/String; = "8.0.7"

.field public static final LOG_TAG:Ljava/lang/String; = "HeyzapSDK"

.field private static loaded:Z

.field private static trackHash:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/heyzap/internal/Analytics;->loaded:Z

    .line 36
    const-string v0, ""

    sput-object v0, Lcom/heyzap/internal/Analytics;->trackHash:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
