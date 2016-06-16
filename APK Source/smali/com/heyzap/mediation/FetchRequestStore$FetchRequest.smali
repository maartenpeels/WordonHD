.class Lcom/heyzap/mediation/FetchRequestStore$FetchRequest;
.super Ljava/lang/Object;
.source "FetchRequestStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/FetchRequestStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchRequest"
.end annotation


# instance fields
.field public final adUnit:Lcom/heyzap/internal/Constants$AdUnit;

.field public final createdAt:J

.field public final unlimited:Z


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/Constants$AdUnit;Z)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/heyzap/mediation/FetchRequestStore$FetchRequest;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heyzap/mediation/FetchRequestStore$FetchRequest;->createdAt:J

    .line 73
    iput-boolean p2, p0, Lcom/heyzap/mediation/FetchRequestStore$FetchRequest;->unlimited:Z

    .line 74
    return-void
.end method
