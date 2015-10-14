.class Lcom/heyzap/mediation/filters/TagMatcher;
.super Ljava/lang/Object;
.source "TagMatcher.java"

# interfaces
.implements Lcom/heyzap/mediation/filters/Matcher;


# instance fields
.field private final tags:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/heyzap/mediation/filters/TagMatcher;->tags:Ljava/util/Collection;

    .line 15
    return-void
.end method


# virtual methods
.method public match(Lcom/heyzap/mediation/filters/FilterContext;)Z
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/heyzap/mediation/filters/TagMatcher;->tags:Ljava/util/Collection;

    iget-object v1, p1, Lcom/heyzap/mediation/filters/FilterContext;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
