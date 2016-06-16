.class Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;
.source "AdcolonyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdWrapper"
.end annotation


# instance fields
.field public final fetchFuture:Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;",
            ">;"
        }
    .end annotation
.end field

.field public incentivizedAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

.field public videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;-><init>()V

    .line 291
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->fetchFuture:Lcom/heyzap/internal/SettableFuture;

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$1;)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getAd()Lcom/jirbo/adcolony/AdColonyAd;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    .line 298
    :goto_0
    return-object v0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->incentivizedAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->incentivizedAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    goto :goto_0

    .line 298
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
