.class public Lcom/heyzap/mediation/request/MediationRequest;
.super Ljava/lang/Object;
.source "MediationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/mediation/request/MediationRequest$RequestType;
    }
.end annotation


# instance fields
.field private final DEFAULT_TIMEOUT:Ljava/lang/Integer;

.field private manager:Lcom/heyzap/mediation/MediationManager;

.field private requestType:Lcom/heyzap/mediation/request/MediationRequest$RequestType;

.field private startedAt:J

.field private timeoutMilli:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/heyzap/mediation/request/MediationRequest$RequestType;

    invoke-direct {v0, p1, p2}, Lcom/heyzap/mediation/request/MediationRequest$RequestType;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/heyzap/mediation/request/MediationRequest;-><init>(Lcom/heyzap/mediation/request/MediationRequest$RequestType;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/heyzap/mediation/request/MediationRequest$RequestType;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->DEFAULT_TIMEOUT:Ljava/lang/Integer;

    .line 11
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->DEFAULT_TIMEOUT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->timeoutMilli:Ljava/lang/Integer;

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->startedAt:J

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->manager:Lcom/heyzap/mediation/MediationManager;

    .line 21
    iput-object p1, p0, Lcom/heyzap/mediation/request/MediationRequest;->requestType:Lcom/heyzap/mediation/request/MediationRequest$RequestType;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->startedAt:J

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 119
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    .line 120
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :cond_2
    check-cast p1, Lcom/heyzap/mediation/request/MediationRequest;

    .line 122
    invoke-virtual {p0}, Lcom/heyzap/mediation/request/MediationRequest;->getRequestType()Lcom/heyzap/mediation/request/MediationRequest$RequestType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/heyzap/mediation/request/MediationRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/heyzap/mediation/request/MediationRequest;->getRequestType()Lcom/heyzap/mediation/request/MediationRequest$RequestType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public getManager()Lcom/heyzap/mediation/MediationManager;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->manager:Lcom/heyzap/mediation/MediationManager;

    return-object v0
.end method

.method public getRemainingTtl()J
    .locals 6

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/heyzap/mediation/request/MediationRequest;->startedAt:J

    sub-long/2addr v0, v2

    .line 71
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/heyzap/mediation/request/MediationRequest;->timeoutMilli:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    sub-long v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestType()Lcom/heyzap/mediation/request/MediationRequest$RequestType;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->requestType:Lcom/heyzap/mediation/request/MediationRequest$RequestType;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/heyzap/mediation/request/MediationRequest;->getRequestType()Lcom/heyzap/mediation/request/MediationRequest$RequestType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStartedAt()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->startedAt:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/heyzap/mediation/request/MediationRequest;->getRequestType()Lcom/heyzap/mediation/request/MediationRequest$RequestType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->hashCode()I

    move-result v0

    return v0
.end method

.method public isStarted()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->startedAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimedOut()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/heyzap/mediation/request/MediationRequest;->isStarted()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-wide v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->startedAt:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/mediation/request/MediationRequest;->timeoutMilli:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/heyzap/internal/Utils;->isExpired(Ljava/lang/Long;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public setManager(Lcom/heyzap/mediation/MediationManager;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/heyzap/mediation/request/MediationRequest;->manager:Lcom/heyzap/mediation/MediationManager;

    .line 63
    return-void
.end method

.method public setTimeoutMilli(I)V
    .locals 1

    .prologue
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->timeoutMilli:Ljava/lang/Integer;

    .line 47
    return-void
.end method
