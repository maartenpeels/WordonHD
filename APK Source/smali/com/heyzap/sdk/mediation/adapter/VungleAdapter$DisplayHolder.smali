.class Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;
.super Ljava/lang/Object;
.source "VungleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayHolder"
.end annotation


# instance fields
.field public final adUnit:Lcom/heyzap/internal/Constants$AdUnit;

.field public final clickListener:Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final closeListener:Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final displayListener:Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;",
            ">;"
        }
    .end annotation
.end field

.field public final incentiveListener:Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->displayListener:Lcom/heyzap/internal/SettableFuture;

    .line 191
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->closeListener:Lcom/heyzap/internal/SettableFuture;

    .line 192
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->clickListener:Lcom/heyzap/internal/SettableFuture;

    .line 193
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    .line 196
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    .line 197
    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;-><init>(Lcom/heyzap/internal/Constants$AdUnit;)V

    return-void
.end method
