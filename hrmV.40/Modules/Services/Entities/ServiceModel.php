<?php

namespace Modules\Services\Entities;

use App\Models\coreApp\Traits\Relationship\StatusRelationTrait;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ServiceModel extends Model
{
    use HasFactory, StatusRelationTrait;

    protected $fillable = [];
    
    protected static function newFactory()
    {
        return \Modules\Services\Database\factories\ServiceModelFactory::new();
    }
}
