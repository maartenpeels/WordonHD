.class Lcom/google/android/gms/tagmanager/ba;
.super Ljava/lang/Object;


# direct methods
.method public static bG(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cq$c;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->k(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/tagmanager/cq$c;->lh()Lcom/google/android/gms/tagmanager/cq$d;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/cq$a;->ld()Lcom/google/android/gms/tagmanager/cq$b;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/b;->cI:Lcom/google/android/gms/internal/b;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    aget-object v5, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tagmanager/cq$b;->b(Ljava/lang/String;Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/cq$b;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/b;->cx:Lcom/google/android/gms/internal/b;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/tagmanager/m;->ka()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/tagmanager/dh;->bX(Ljava/lang/String;)Lcom/google/android/gms/internal/d$a;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tagmanager/cq$b;->b(Ljava/lang/String;Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/cq$b;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/tagmanager/m;->kb()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    aget-object v5, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tagmanager/cq$b;->b(Ljava/lang/String;Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/cq$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/cq$b;->lg()Lcom/google/android/gms/tagmanager/cq$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/tagmanager/cq$d;->a(Lcom/google/android/gms/tagmanager/cq$a;)Lcom/google/android/gms/tagmanager/cq$d;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/cq$d;->lk()Lcom/google/android/gms/tagmanager/cq$c;

    move-result-object v0

    return-object v0
.end method

.method private static k(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/ba;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    return-object v0
.end method

.method static l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "JSONArrays are not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "JSON nulls are not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/json/JSONObject;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/ba;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_3
    move-object v0, p0

    goto :goto_1
.end method
