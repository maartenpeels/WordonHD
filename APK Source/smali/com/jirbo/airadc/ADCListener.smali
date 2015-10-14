.class public Lcom/jirbo/airadc/ADCListener;
.super Ljava/lang/Object;
.source "ADCListener.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;
.implements Lcom/jirbo/adcolony/AdColonyAdListener;
.implements Lcom/jirbo/adcolony/AdColonyV4VCListener;


# instance fields
.field ctx:Lcom/jirbo/airadc/AirADCContext;


# direct methods
.method public constructor <init>(Lcom/jirbo/airadc/AirADCContext;)V
    .locals 0
    .param p1, "context"    # Lcom/jirbo/airadc/AirADCContext;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/jirbo/airadc/ADCListener;->ctx:Lcom/jirbo/airadc/AirADCContext;

    .line 12
    return-void
.end method


# virtual methods
.method public onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 3
    .param p1, "arg0"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/jirbo/airadc/ADCListener;->ctx:Lcom/jirbo/airadc/AirADCContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdFinished|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->shown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdColony"

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/airadc/AirADCContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/jirbo/airadc/ADCListener;->ctx:Lcom/jirbo/airadc/AirADCContext;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "AdColonyANE"

    const-string v1, "AdFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method public onAdColonyAdAvailabilityChange(ZLjava/lang/String;)V
    .locals 3
    .param p1, "available"    # Z
    .param p2, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jirbo/airadc/ADCListener;->ctx:Lcom/jirbo/airadc/AirADCContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdAvailabilityChange|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdColony"

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/airadc/AirADCContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/jirbo/airadc/ADCListener;->ctx:Lcom/jirbo/airadc/AirADCContext;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "AdColonyANE"

    const-string v1, "AdAvailabilityChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public onAdColonyAdStarted(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 3
    .param p1, "arg0"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    const-string v2, "AdStarted"

    .line 26
    iget-object v0, p0, Lcom/jirbo/airadc/ADCListener;->ctx:Lcom/jirbo/airadc/AirADCContext;

    const-string v1, "AdStarted"

    const-string v1, "AdColony"

    invoke-virtual {v0, v2, v1}, Lcom/jirbo/airadc/AirADCContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/jirbo/airadc/ADCListener;->ctx:Lcom/jirbo/airadc/AirADCContext;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "AdColonyANE"

    const-string v1, "AdStarted"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method

.method public onAdColonyV4VCReward(Lcom/jirbo/adcolony/AdColonyV4VCReward;)V
    .locals 4
    .param p1, "arg0"    # Lcom/jirbo/adcolony/AdColonyV4VCReward;

    .prologue
    const-string v3, "|"

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V4VCReward|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyV4VCReward;->success()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyV4VCReward;->amount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyV4VCReward;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/jirbo/airadc/ADCListener;->ctx:Lcom/jirbo/airadc/AirADCContext;

    const-string v2, "AdColony"

    invoke-virtual {v1, v0, v2}, Lcom/jirbo/airadc/AirADCContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/jirbo/airadc/ADCListener;->ctx:Lcom/jirbo/airadc/AirADCContext;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "AdColonyANE"

    const-string v2, "V4VCReward"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method
