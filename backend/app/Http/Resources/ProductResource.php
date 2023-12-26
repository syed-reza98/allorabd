<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
{

    // __Illuminate\Http\Resources\Json\JsonResource::construct
    // Create a new resource instance.
    // public function __construct($resource)
    // {
    //     parent::__construct($resource);
    //     $this->resource = $resource;
    // }

    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        // return parent::toArray($request);
        return [
            'id' => $this->id,
            'name' => $this->name,
            'image_url' => $this->image_url,
            'description' => $this->description,
            'price' => $this->price,
        ];
    }
}