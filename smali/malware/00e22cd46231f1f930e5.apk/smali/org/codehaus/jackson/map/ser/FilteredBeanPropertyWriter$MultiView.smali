.class final Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;
.super Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
.source "FilteredBeanPropertyWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultiView"
.end annotation


# instance fields
.field protected final _views:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "base"    # Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;)V

    .line 69
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    .line 70
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 1
    .param p1, "fromView"    # Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 74
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    .line 75
    return-void
.end method


# virtual methods
.method public serializeAsField(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 4
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "prov"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/SerializerProvider;->getSerializationView()Ljava/lang/Class;

    move-result-object v0

    .line 88
    .local v0, "activeView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_2

    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    array-length v2, v3

    .line 90
    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 91
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    :cond_0
    if-ne v1, v2, :cond_2

    .line 99
    .end local v1    # "i":I
    .end local v2    # "len":I
    :goto_1
    return-void

    .line 90
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_1
.end method

.method public withSerializer(Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    new-instance v0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;-><init>(Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;Lorg/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method
