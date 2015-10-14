.class public Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AppLovinErrorCodes;
.super Ljava/lang/Object;
.source "ApplovinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppLovinErrorCodes"
.end annotation


# static fields
.field public static final FETCH_AD_TIMEOUT:I = -0x66

.field public static final INCENTIVIZED_NO_AD_PRELOADED:I = -0x12c

.field public static final INCENTIVIZED_SERVER_TIMEOUT:I = -0x1f4

.field public static final INCENTIVIZED_UNKNOWN_SERVER_ERROR:I = -0x190

.field public static final INCENTIVIZED_USER_CLOSED_VIDEO:I = -0x258

.field public static final NO_FILL:I = 0xcc

.field public static final NO_NETWORK:I = -0x67

.field public static final UNABLE_TO_RENDER_AD:I = -0x6

.field public static final UNSPECIFIED_ERROR:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
