.class public Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;
.super Ljava/lang/Object;
.source "NetworkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/abstr/NetworkAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchResult"
.end annotation


# static fields
.field public static NOT_READY:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;


# instance fields
.field public errorCode:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

.field public errorMessage:Ljava/lang/String;

.field public success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 140
    new-instance v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    sget-object v1, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->TIMEOUT:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v2, "Ad not ready"

    invoke-direct {v0, v1, v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    sput-object v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->NOT_READY:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->success:Z

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->errorCode:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    .line 133
    iput-object p2, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->errorMessage:Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->success:Z

    .line 135
    return-void
.end method
