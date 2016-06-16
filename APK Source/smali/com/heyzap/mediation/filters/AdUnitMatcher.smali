.class Lcom/heyzap/mediation/filters/AdUnitMatcher;
.super Ljava/lang/Object;
.source "AdUnitMatcher.java"

# interfaces
.implements Lcom/heyzap/mediation/filters/Matcher;


# instance fields
.field private adUnit:Lcom/heyzap/internal/Constants$AdUnit;


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/heyzap/mediation/filters/AdUnitMatcher;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    .line 17
    return-void
.end method


# virtual methods
.method public match(Lcom/heyzap/mediation/filters/FilterContext;)Z
    .locals 2

    .prologue
    .line 20
    iget-object v0, p1, Lcom/heyzap/mediation/filters/FilterContext;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    iget-object v1, p0, Lcom/heyzap/mediation/filters/AdUnitMatcher;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
