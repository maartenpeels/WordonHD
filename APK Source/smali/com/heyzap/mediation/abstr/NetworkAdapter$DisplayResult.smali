.class public Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;
.super Ljava/lang/Object;
.source "NetworkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/abstr/NetworkAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayResult"
.end annotation


# instance fields
.field public errorMessage:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-boolean v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;->success:Z

    .line 159
    iput-boolean v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;->success:Z

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;->success:Z

    .line 155
    iput-object p1, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;->errorMessage:Ljava/lang/String;

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;->success:Z

    .line 157
    return-void
.end method
