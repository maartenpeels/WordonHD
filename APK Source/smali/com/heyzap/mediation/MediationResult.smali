.class public Lcom/heyzap/mediation/MediationResult;
.super Ljava/lang/Object;
.source "MediationResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/mediation/MediationResult$NetworkResult;
    }
.end annotation


# instance fields
.field private error:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public networkResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/MediationResult$NetworkResult;",
            ">;"
        }
    .end annotation
.end field

.field public selectedNetwork:Lcom/heyzap/mediation/MediationResult$NetworkResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/MediationResult;->networkResults:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/mediation/MediationResult;->error:Ljava/lang/String;

    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/heyzap/mediation/MediationResult;->error:Ljava/lang/String;

    .line 20
    return-void
.end method
