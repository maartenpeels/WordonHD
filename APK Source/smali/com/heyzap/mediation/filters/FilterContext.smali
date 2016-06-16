.class public Lcom/heyzap/mediation/filters/FilterContext;
.super Ljava/lang/Object;
.source "FilterContext.java"


# instance fields
.field public final adUnit:Lcom/heyzap/internal/Constants$AdUnit;

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/heyzap/mediation/filters/FilterContext;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    .line 15
    iput-object p2, p0, Lcom/heyzap/mediation/filters/FilterContext;->tag:Ljava/lang/String;

    .line 16
    return-void
.end method
