.class public Lcom/heyzap/mediation/MediationResult$NetworkResult;
.super Ljava/lang/Object;
.source "MediationResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/MediationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkResult"
.end annotation


# instance fields
.field public final adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

.field public final fetchResult:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

.field public final id:Ljava/lang/String;

.field public final isVideo:Z

.field public final network:Ljava/lang/String;

.field public final ordinal:I

.field public final score:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;Lcom/heyzap/mediation/abstr/NetworkAdapter;ZLjava/lang/String;Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->id:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->score:Ljava/lang/Double;

    .line 38
    iput-object p5, p0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->network:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->fetchResult:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    .line 40
    iput-object p3, p0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 41
    iput p7, p0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->ordinal:I

    .line 42
    iput-boolean p4, p0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->isVideo:Z

    .line 43
    return-void
.end method
