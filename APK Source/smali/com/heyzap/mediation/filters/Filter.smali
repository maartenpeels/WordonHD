.class Lcom/heyzap/mediation/filters/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# instance fields
.field public final matcher:Lcom/heyzap/mediation/filters/Matcher;

.field public final policy:Lcom/heyzap/mediation/filters/FilterPolicy;


# direct methods
.method public constructor <init>(Lcom/heyzap/mediation/filters/Matcher;Lcom/heyzap/mediation/filters/FilterPolicy;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/heyzap/mediation/filters/Filter;->matcher:Lcom/heyzap/mediation/filters/Matcher;

    .line 12
    iput-object p2, p0, Lcom/heyzap/mediation/filters/Filter;->policy:Lcom/heyzap/mediation/filters/FilterPolicy;

    .line 13
    return-void
.end method
