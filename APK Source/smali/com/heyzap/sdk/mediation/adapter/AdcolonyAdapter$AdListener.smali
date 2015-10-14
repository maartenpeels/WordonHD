.class Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdListener;
.super Ljava/lang/Object;
.source "AdcolonyAdapter.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdListener"
.end annotation


# instance fields
.field private final adDisplay:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;


# direct methods
.method private constructor <init>(Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdListener;->adDisplay:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    .line 307
    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$1;)V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdListener;-><init>(Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V

    return-void
.end method


# virtual methods
.method public onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdListener;->adDisplay:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    iget-object v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->closeListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 312
    return-void
.end method

.method public onAdColonyAdStarted(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdListener;->adDisplay:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    iget-object v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 317
    return-void
.end method
