.class Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;
.source "UnityadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayHolder"
.end annotation


# instance fields
.field public final adUnit:Lcom/heyzap/internal/Constants$AdUnit;


# direct methods
.method private constructor <init>(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;-><init>()V

    .line 330
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    .line 331
    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;-><init>(Lcom/heyzap/internal/Constants$AdUnit;)V

    return-void
.end method
